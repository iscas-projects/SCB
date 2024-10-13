(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1534 0)
(declare-sort var3512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toLowerCase/1946809429 (String var3512) String)
(declare-const null-String String)
(declare-const var3512-ROOT var3512)
(declare-const var1962 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1962 null-String)))
(define-const var468 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3425 String (replace/1524665721 var1962 46 95)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
;(assert (<init>/-1061048412 var468 var3425)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var468!1 String)
(assert (= var468!1 var3425))
(define-const var3885 Int 1) ; Statement: i8 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var96 Int (length/-171891354 var468!1)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(define-const var1964 Int (- var96 1)) ; Statement: $i1 = $i0 - 1 
 ; Statement: if i8 >= $i1 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3885 var1964)) ; Cond: i8 >= $i1 
(assert true)
(define-const var2725 String (toString/-2075883882 var468!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3858 var3512 var3512-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1986 String (toLowerCase/1946809429 var2725 var3858)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1962=r1, var1534=null_type, var468=$r0, var3425=$r2, var3885=i8, var96=$i0, var1964=$i1, var2725=$r4, var3512=java.util.Locale, var3858=$r3, var1986=$r5}
; {r1=var1962, null_type=var1534, $r0=var468, $r2=var3425, i8=var3885, $i0=var96, $i1=var1964, $r4=var2725, java.util.Locale=var3512, $r3=var3858, $r5=var1986}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	i8 = 1;	$i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i1 = $i0 - 1;	if i8 >= $i1 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	return $r5
;block_num 3