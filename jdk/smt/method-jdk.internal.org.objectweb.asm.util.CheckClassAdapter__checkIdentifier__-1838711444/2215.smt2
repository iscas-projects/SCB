(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1914 0)
(declare-sort var2830 0)
(declare-sort var2465 0)
(declare-sort var273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2830_getChar/635386524 (String Int) Int)
(declare-fun var2465_isJavaIdentifierStart/-1368251299 (Int) Bool)
(declare-fun var273-init () var273)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var273 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var904 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var904 null-String)))
(declare-const var3175 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3175 null-Int)))
(define-const var2235 Int (var2830_getChar/635386524 var904 var3175)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i2) 
(define-const var3281 Bool (var2465_isJavaIdentifierStart/-1368251299 var2235)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c0) 
 ; Statement: if $z0 != 0 goto i3 = i2 + 1 
(assert (not (not (= (ite var3281 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2359 var273 var273-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2501 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2501)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2501!1 String)
(assert (= var2501!1 ""))
(assert true)
(define-const var669 String (append/672562846 var2501!1 var904)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2501!2 String)
(assert (= var2501!2 (str.++ var2501!1 var904)))
(assert true)
(define-const var2068 String (append/672562846 var669 ": identifier expected at index ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": identifier expected at index ") 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 ": identifier expected at index ")))
(assert true)
(define-const var719 String (append/-1001720160 var2068 var3175)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2068!1 String)
(assert (str.prefixof var2068 var2068!1))
(assert true)
(define-const var2354 String (toString/-2075883882 var719)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2359 var2354)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2359!1 var273)
(declare-const var2354!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2830_getChar/635386524=([java.lang.String, int], char), var2465_isJavaIdentifierStart/-1368251299=([char], boolean), var273-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var904=r0, var1914=null_type, var3175=i2, var2830=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2235=$c0, var2465=java.lang.Character, var3281=$z0, var273=java.lang.IllegalArgumentException, var2359=$r1, var2501=$r2, var669=$r3, var2068=$r4, var719=$r5, var2354=$r6}
; {r0=var904, null_type=var1914, i2=var3175, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var2830, $c0=var2235, java.lang.Character=var2465, $z0=var3281, java.lang.IllegalArgumentException=var273, $r1=var2359, $r2=var2501, $r3=var669, $r4=var2068, $r5=var719, $r6=var2354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i2);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c0);	if $z0 != 0 goto i3 = i2 + 1;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": identifier expected at index ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2