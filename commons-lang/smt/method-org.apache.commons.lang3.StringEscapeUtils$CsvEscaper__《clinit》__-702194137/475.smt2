(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var719 String (String_valueOf/-371898945 34)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(34) 
(define-const var2047 String var719) ; Statement: <org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: java.lang.String CSV_QUOTE_STR> = $r0 
(define-const var1 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (char)[4] 
(declare-const var1!1 (Array Int Int))
(assert (not (= var1!1 null-__Array__Int__Int__)))
(assert (= (select var1!1 0) 44)) ; Statement: $r1[0] = 44 
(declare-const var1!2 (Array Int Int))
(assert (not (= var1!2 null-__Array__Int__Int__)))
(assert (= (select var1!2 1) 34)) ; Statement: $r1[1] = 34 
(declare-const var1!3 (Array Int Int))
(assert (not (= var1!3 null-__Array__Int__Int__)))
(assert (= (select var1!3 2) 13)) ; Statement: $r1[2] = 13 
(declare-const var1!4 (Array Int Int))
(assert (not (= var1!4 null-__Array__Int__Int__)))
(assert (= (select var1!4 3) 10)) ; Statement: $r1[3] = 10 
(define-const var1334 (Array Int Int) var1!4) ; Statement: <org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: char[] CSV_SEARCH_CHARS> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), arr-Int-init=([], char[])}
; {var719=$r0, var2047=<org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: java.lang.String CSV_QUOTE_STR>, var1=$r1, var1334=<org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: char[] CSV_SEARCH_CHARS>}
; {$r0=var719, <org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: java.lang.String CSV_QUOTE_STR>=var2047, $r1=var1, <org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: char[] CSV_SEARCH_CHARS>=var1334}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(34);	<org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: java.lang.String CSV_QUOTE_STR> = $r0;	$r1 = newarray (char)[4];	$r1[0] = 44;	$r1[1] = 34;	$r1[2] = 13;	$r1[3] = 10;	<org.apache.commons.lang3.StringEscapeUtils$CsvEscaper: char[] CSV_SEARCH_CHARS> = $r1;	return
;block_num 1