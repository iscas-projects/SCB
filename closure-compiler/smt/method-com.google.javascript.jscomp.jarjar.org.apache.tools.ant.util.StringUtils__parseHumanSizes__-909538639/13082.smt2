(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2374 0)
(declare-sort var613 0)
(declare-sort var617 0)
(declare-sort var975 0)
(declare-sort var42 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var613_isDigit/-731660569 (Int) Bool)
(declare-fun var975-init () var975)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var975 String var42) void)
(declare-fun cast-from-var617-to-var42 (var617) var42)
(declare-const null-String String)
(declare-const null-var617 var617)
(declare-const var1682 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1682 null-String)))
(define-const var2519 Int 1) ; Statement: l1 = 1L 
(define-const var1523 Int 1) ; Statement: l13 = 1L 
(define-const var3641 Int 1) ; Statement: l12 = 1L 
(define-const var3915 Int 1) ; Statement: l11 = 1L 
(define-const var8 Int 1) ; Statement: l10 = 1L 
(define-const var3189 Int 1) ; Statement: l9 = 1L 
(assert (and true (and (> (str.len var1682) 0) (<= 0 0))))
(define-const var860 Int (charAt/698050440 var1682 0)) ; Statement: c0 = virtualinvoke r7.<java.lang.String: char charAt(int)>(0) 
(define-const var1514 Int (cast-from-Int-to-Int var860)) ; Statement: $i14 = (int) c0 
 ; Statement: lookupswitch($i14) {     case 43: goto r7 = virtualinvoke r7.<java.lang.String: java.lang.String substring(int)>(1);     case 45: goto l1 = -1L;     default: goto $i2 = virtualinvoke r7.<java.lang.String: int length()>(); } 
(assert (and (not (= var1514 45)) (and (not (= var1514 43)) true))) ; Intersect: Negate: Cond: $i14 == 45   and Intersect: Negate: Cond: $i14 == 43   and Non Conditional  
(assert true)
(define-const var987 Int (length/-134980193 var1682)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var3962 Int (- var987 1)) ; Statement: $i3 = $i2 - 1 
(assert (and true (and (> (str.len var1682) var3962) (<= 0 var3962))))
(define-const var2599 Int (charAt/698050440 var1682 var3962)) ; Statement: $c4 = virtualinvoke r7.<java.lang.String: char charAt(int)>($i3) 
(define-const var3755 Bool (var613_isDigit/-731660569 var2599)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isDigit(char)>($c4) 
 ; Statement: if $z0 != 0 goto $l7 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r7) 
(assert (not (not (= (ite var3755 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var3257 var617) ; Statement: $r0 := @caughtexception 
(assert (not (= var3257 null-var617)))
(define-const var580 var975 var975-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2094 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2094)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2094!1 String)
(assert (= var2094!1 ""))
(assert true)
(define-const var2965 String (append/672562846 var2094!1 "Failed to parse \u0022")) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse \"") 
(declare-const var2094!2 String)
(assert (= var2094!2 (str.++ var2094!1 "Failed to parse \u0022")))
(assert true)
(define-const var3409 String (append/672562846 var2965 var1682)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2965!1 String)
(assert (= var2965!1 (str.++ var2965 var1682)))
(assert true)
(define-const var796 String (append/672562846 var3409 "\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3409!1 String)
(assert (= var3409!1 (str.++ var3409 "\u0022")))
(assert true)
(define-const var1329 String (toString/-2075883882 var796)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var580 var1329 (cast-from-var617-to-var42 var3257))) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r0) 

(declare-const var580!1 var975)
(declare-const var1329!1 String)
(declare-const var3257!1 var617)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), var613_isDigit/-731660569=([char], boolean), var975-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var617-to-var42=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var1682=r7, var2374=null_type, var2519=l1, var1523=l13, var3641=l12, var3915=l11, var8=l10, var3189=l9, var860=c0, var1514=$i14, var987=$i2, var3962=$i3, var2599=$c4, var613=java.lang.Character, var3755=$z0, var617=java.lang.NumberFormatException, var3257=$r0, var975=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var580=$r9, var2094=$r8, var2965=$r3, var3409=$r4, var796=$r5, var1329=$r6, var42=java.lang.Throwable}
; {r7=var1682, null_type=var2374, l1=var2519, l13=var1523, l12=var3641, l11=var3915, l10=var8, l9=var3189, c0=var860, $i14=var1514, $i2=var987, $i3=var3962, $c4=var2599, java.lang.Character=var613, $z0=var3755, java.lang.NumberFormatException=var617, $r0=var3257, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var975, $r9=var580, $r8=var2094, $r3=var2965, $r4=var3409, $r5=var796, $r6=var1329, java.lang.Throwable=var42}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: java.lang.String;	l1 = 1L;	l13 = 1L;	l12 = 1L;	l11 = 1L;	l10 = 1L;	l9 = 1L;	c0 = virtualinvoke r7.<java.lang.String: char charAt(int)>(0);	$i14 = (int) c0;	lookupswitch($i14) {     case 43: goto r7 = virtualinvoke r7.<java.lang.String: java.lang.String substring(int)>(1);     case 45: goto l1 = -1L;     default: goto $i2 = virtualinvoke r7.<java.lang.String: int length()>(); };	$i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i3 = $i2 - 1;	$c4 = virtualinvoke r7.<java.lang.String: char charAt(int)>($i3);	$z0 = staticinvoke <java.lang.Character: boolean isDigit(char)>($c4);	if $z0 != 0 goto $l7 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r7);	$r0 := @caughtexception;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r0);	throw $r9
;block_num 3