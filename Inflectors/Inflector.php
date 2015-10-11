<?php
// namespace MiddlewareGenerator;

// pluralize
// singularize
// titleize
// htmlize
// unhtmlize
// camelize
// pascalize
// variablize
// tableize
// classify
// ordinalize
// capitalize

class Inflector 
{
  /**
     * Invoking gets the Inflector object
     *
     * @return \FcfnStdLib\Inflector\Inflector
     */
    public function __invoke()
    {
        return $this;
    }
    
      // public function __construct(){

  // }

    /**
     * Pluralizes English nouns.
     *
     * @param string $word
     *            English noun to pluralize
     * @return string Plural noun
     */
    public function pluralize($word)
    {
        $plural = array(
            '/(quiz)$/i' => '\1zes',
            '/^(ox)$/i' => '\1en',
            '/([m|l])ouse$/i' => '\1ice',
            '/(matr|vert|ind)ix|ex$/i' => '\1ices',
            '/(x|ch|ss|sh)$/i' => '\1es',
            '/([^aeiouy]|qu)ies$/i' => '\1y',
            '/([^aeiouy]|qu)y$/i' => '\1ies',
            '/(hive)$/i' => '\1s',
            '/(?:([^f])fe|([lr])f)$/i' => '\1\2ves',
            '/sis$/i' => 'ses',
            '/([ti])um$/i' => '\1a',
            '/(buffal|tomat)o$/i' => '\1oes',
            '/(bu)s$/i' => '\1ses',
            '/(alias|status)/i' => '\1es',
            '/(octop|vir)us$/i' => '\1i',
            '/(ax|test)is$/i' => '\1es',
            '/s$/i' => 's',
            '/$/' => 's'
        );

        $uncountable = array(
            'equipment',
            'information',
            'rice',
            'money',
            'genus',
            'species',
            'series',
            'fish',
            'sheep'
        );

        $irregular = array(
            'person' => 'people',
            'man' => 'men',
            'child' => 'children',
            'sex' => 'sexes',
            'move' => 'moves',
        );

        $lowercased_word = strtolower($word);

        foreach ($uncountable as $_uncountable) {
            if (substr($lowercased_word, (- 1 * strlen($_uncountable))) == $_uncountable) {
                return $word;
            }
        }

        foreach ($irregular as $_plural => $_singular) {
            if (preg_match('/(' . $_plural . ')$/i', $word, $arr)) {
                return preg_replace('/(' . $_plural . ')$/i',
                    substr($arr[0], 0, 1) . substr($_singular, 1), $word);
            }
        }

        foreach ($plural as $rule => $replacement) {
            if (preg_match($rule, $word)) {
                return preg_replace($rule, $replacement, $word);
            }
        }
        return FALSE;
    }

    /**
     * Singularizes English nouns.
     *
     * @param string $word
     *            English noun to singularize
     * @return string Singular noun.
     */
    public function singularize($word)
    {
        $singular = array(
            '/(quiz)zes$/i' => '\1',
            '/(matr)ices$/i' => '\1ix',
            '/(vert|ind)ices$/i' => '\1ex',
            '/^(ox)en/i' => '\1',
            '/(alias|status)es$/i' => '\1',
            '/([octop|vir])i$/i' => '\1us',
            '/(cris|ax|test)es$/i' => '\1is',
            '/(shoe)s$/i' => '\1',
            '/(o)es$/i' => '\1',
            '/(bus)es$/i' => '\1',
            '/([m|l])ice$/i' => '\1ouse',
            '/(x|ch|ss|sh)es$/i' => '\1',
            '/(m)ovies$/i' => '\1ovie',
            '/(s)eries$/i' => '\1eries',
            '/([^aeiouy]|qu)ies$/i' => '\1y',
            '/([lr])ves$/i' => '\1f',
            '/(tive)s$/i' => '\1',
            '/(hive)s$/i' => '\1',
            '/([^f])ves$/i' => '\1fe',
            '/(^analy)ses$/i' => '\1sis',
            '/((a)naly|(b)a|(d)iagno|(p)arenthe|(p)rogno|(s)ynop|(t)he)ses$/i' => '\1\2sis',
            '/([ti])a$/i' => '\1um',
            '/(n)ews$/i' => '\1ews',
            '/s$/i' => ''
        );

        $uncountable = array(
            'equipment',
            'information',
            'rice',
            'money',
            'genus',
            'species',
            'series',
            'fish',
            'sheep'
        );

        $irregular = array(
            'person' => 'people',
            'man' => 'men',
            'child' => 'children',
            'sex' => 'sexes',
            'move' => 'moves',
            'media' => 'media'
        );

        $lowercased_word = strtolower($word);
        foreach ($uncountable as $_uncountable) {
            if (substr($lowercased_word, (- 1 * strlen($_uncountable))) == $_uncountable) {
                return $word;
            }
        }

        foreach ($irregular as $_plural => $_singular) {
            if (preg_match('/(' . $_singular . ')$/i', $word, $arr)) {
                return preg_replace('/(' . $_singular . ')$/i',
                    substr($arr[0], 0, 1) . substr($_plural, 1), $word);
            }
        }

        foreach ($singular as $rule => $replacement) {
            if (preg_match($rule, $word)) {
                return preg_replace($rule, $replacement, $word);
            }
        }

        return $word;
    }
    
    /**
     * This was broken because it used zf2's camel case filter. 
     * I rewrote it and took that functionality out.
     * "species_like_this" => "Species Like This"
     */
    public function titleize($word, $ucfirst = false)
    {
        $search   = array("-", "_");
        $replace = " ";
        $word = str_replace($search, $replace, $word);
        
        $uppercase = $ucfirst ? 'ucfirst' : 'ucwords';
        return $uppercase($word);

    }    
    
    /**
     * Replaces '_' with '-'.
     */
    public function htmlize($word)
    {
        $replace = "-";
        $search   = "_";
        $word = str_replace($search, $replace, $word);
       
        return $word;

    }
    
    /**
     * Replaces '-' with '_'.
     */
    public function unhtmlize($word)
    {
        $replace = "_";
        $search   = "-";
        $word = str_replace($search, $replace, $word);
       
        return $word;

    }

    /**
     * Returns given word as CamelCased
     *
     * Converts a word like "send_email" to "SendEmail". It
     * will remove non alphanumeric character from the word, so
     * "who's online" will be converted to "WhoSOnline"
     *
     * @param string $word Word to convert to camel case
     * @return string UpperCamelCasedWord
     */
    public function camelize($word)
    {
        return str_replace(' ', '',
            ucwords(preg_replace('/[^A-Z^a-z^0-9]+/', ' ', $word)));
    }

    //this is what the above function should've been named. Leaving it there for backward compatibility
    public function pascalize($word)
    {
        return str_replace(' ', '',
            ucwords(preg_replace('/[^A-Z^a-z^0-9]+/', ' ', $word)));
    }
    
    /**
     * Same as camelize but first char is lowercased
     *
     * Converts a word like "send_email" to "sendEmail". It
     * will remove non alphanumeric character from the word, so
     * "who's online" will be converted to "whoSOnline"
     *
     * @param string $word
     *            Word to lowerCamelCase
     * @return string Returns a lowerCamelCasedWord
     */
    public function variablize($word)
    {
        $word = self::camelize($word);
        return strtolower($word[0]) . substr($word, 1);
    }

    /**
     * Converts a class name to its table name according to rails
     * naming conventions.
     *
     * Converts "Person" to "people"
     *
     * @param string $class_name
     *            Class name for getting related table_name.
     * @return string plural_table_name
     */
    public function tableize($class_name)
    {
        return self::pluralize(self::underscore($class_name));
    }

    /**
     * Converts a table name to its class name according to rails
     * naming conventions.
     *
     * Converts "people" to "Person"
     *
     * @param string $table_name
     *            Table name for getting related ClassName.
     * @return string SingularClassName
     */
    public function classify($table_name)
    {
        return self::camelize(self::singularize($table_name));
    }

    /**
     * Converts number to its ordinal English form.
     *
     * This method converts 13 to 13th, 2 to 2nd ...
     *
     * @param integer $number
     *            Number to get its ordinal value
     * @return string Ordinal representation of given string.
     */
    public function ordinalize($number)
    {
        if (in_array(($number % 100), range(11, 13))) {
            return $number . 'th';
        } else {
            switch (($number % 10)) {
                case 1:
                    return $number . 'st';
                    break;
                case 2:
                    return $number . 'nd';
                    break;
                case 3:
                    return $number . 'rd';
                default:
                    return $number . 'th';
                    break;
            }
        }
    }
    
    public function capitalize($string){
        return ucwords($string);
    } 
    
}