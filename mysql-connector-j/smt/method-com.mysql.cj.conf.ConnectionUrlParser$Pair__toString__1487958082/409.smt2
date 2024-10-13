(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort var3676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-522406933 (var3676) String)
(declare-fun cast-from-var2795-to-var3676 (var2795) var3676)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun arr-var3676-init () (Array Int var3676))
(declare-fun left/1936829226 (var2795) var3676)
(declare-fun right/1936829226 (var2795) var3676)
(declare-fun String_format/1339386452 (String (Array Int var3676)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2795 var2795)
(declare-const null-__Array__Int__var3676__ (Array Int var3676))
(declare-const var1834 var2795) ; Statement: r1 := @this: com.mysql.cj.conf.ConnectionUrlParser$Pair 
(assert (not (= var1834 null-var2795)))
(define-const var3487 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2707 String (toString/-522406933 (cast-from-var2795-to-var3676 var1834))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var3487 var2707)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3487!1 String)
(assert (= var3487!1 var2707))
(define-const var1964 (Array Int var3676) arr-var3676-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(define-const var2346 var3676 (left/1936829226 var1834)) ; Statement: $r4 = r1.<com.mysql.cj.conf.ConnectionUrlParser$Pair: java.lang.Object left> 
(declare-const var1964!1 (Array Int var3676))
(assert (not (= var1964!1 null-__Array__Int__var3676__)))
(assert (= (select var1964!1 0) var2346)) ; Statement: $r3[0] = $r4 
(define-const var3936 var3676 (right/1936829226 var1834)) ; Statement: $r5 = r1.<com.mysql.cj.conf.ConnectionUrlParser$Pair: java.lang.Object right> 
(declare-const var1964!2 (Array Int var3676))
(assert (not (= var1964!2 null-__Array__Int__var3676__)))
(assert (= (select var1964!2 1) var3936)) ; Statement: $r3[1] = $r5 
(define-const var3189 String (String_format/1339386452 " :: { left: %s, right: %s }" var1964!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: { left: %s, right: %s }", $r3) 
(assert true)
;(assert (append/672562846 var3487!1 var3189)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3487!2 String)
(assert (= var3487!2 (str.++ var3487!1 var3189)))
(assert true)
(define-const var792 String (toString/-2075883882 var3487!2)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2795-to-var3676=([com.mysql.cj.conf.ConnectionUrlParser$Pair], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), arr-var3676-init=([], java.lang.Object[]), left/1936829226=([com.mysql.cj.conf.ConnectionUrlParser$Pair], java.lang.Object), right/1936829226=([com.mysql.cj.conf.ConnectionUrlParser$Pair], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2795=com.mysql.cj.conf.ConnectionUrlParser$Pair, var1834=r1, var3487=$r0, var3676=java.lang.Object, var2707=$r2, var1964=$r3, var2346=$r4, var3936=$r5, var3189=$r6, var792=$r7}
; {com.mysql.cj.conf.ConnectionUrlParser$Pair=var2795, r1=var1834, $r0=var3487, java.lang.Object=var3676, $r2=var2707, $r3=var1964, $r4=var2346, $r5=var3936, $r6=var3189, $r7=var792}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.conf.ConnectionUrlParser$Pair;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = newarray (java.lang.Object)[2];	$r4 = r1.<com.mysql.cj.conf.ConnectionUrlParser$Pair: java.lang.Object left>;	$r3[0] = $r4;	$r5 = r1.<com.mysql.cj.conf.ConnectionUrlParser$Pair: java.lang.Object right>;	$r3[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: { left: %s, right: %s }", $r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1