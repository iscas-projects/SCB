(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var275 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var275 null-String)))
(define-const var2745 String "antlib:") ; Statement: $r1 = "antlib:" 
(assert true)
(define-const var2978 Int (length/-134980193 var2745)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var2978 0) (>= (str.len var275) var2978)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var275=r0, var2907=null_type, var2745=$r1, var2978=$i0, var1242=r2, var2692=$z0, var2139=$r3, var1258=$r4, var1660=$r5, var1011=$r6, var3398=r11}
; {r0=var275, null_type=var2907, $r1=var2745, $i0=var2978, r2=var1242, $z0=var2692, $r3=var2139, $r4=var1258, $r5=var1660, $r6=var1011, r11=var3398}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "antlib:";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("//");	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/antlib.xml");	r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return r11
;block_num 3