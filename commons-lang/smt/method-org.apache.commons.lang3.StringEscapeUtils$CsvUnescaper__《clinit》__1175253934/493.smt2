(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var515 String (String_valueOf/-371898945 34)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(34) 
(define-const var3414 String var515) ; Statement: <org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: java.lang.String CSV_QUOTE_STR> = $r0 
(define-const var1575 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (char)[4] 
(declare-const var1575!1 (Array Int Int))
(assert (not (= var1575!1 null-__Array__Int__Int__)))
(assert (= (select var1575!1 0) 44)) ; Statement: $r1[0] = 44 
(declare-const var1575!2 (Array Int Int))
(assert (not (= var1575!2 null-__Array__Int__Int__)))
(assert (= (select var1575!2 1) 34)) ; Statement: $r1[1] = 34 
(declare-const var1575!3 (Array Int Int))
(assert (not (= var1575!3 null-__Array__Int__Int__)))
(assert (= (select var1575!3 2) 13)) ; Statement: $r1[2] = 13 
(declare-const var1575!4 (Array Int Int))
(assert (not (= var1575!4 null-__Array__Int__Int__)))
(assert (= (select var1575!4 3) 10)) ; Statement: $r1[3] = 10 
(define-const var973 (Array Int Int) var1575!4) ; Statement: <org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: char[] CSV_SEARCH_CHARS> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), arr-Int-init=([], char[])}
; {var515=$r0, var3414=<org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: java.lang.String CSV_QUOTE_STR>, var1575=$r1, var973=<org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: char[] CSV_SEARCH_CHARS>}
; {$r0=var515, <org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: java.lang.String CSV_QUOTE_STR>=var3414, $r1=var1575, <org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: char[] CSV_SEARCH_CHARS>=var973}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(34);	<org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: java.lang.String CSV_QUOTE_STR> = $r0;	$r1 = newarray (char)[4];	$r1[0] = 44;	$r1[1] = 34;	$r1[2] = 13;	$r1[3] = 10;	<org.apache.commons.lang3.StringEscapeUtils$CsvUnescaper: char[] CSV_SEARCH_CHARS> = $r1;	return
;block_num 1