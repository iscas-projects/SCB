(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3422 0)
(declare-sort var730 0)
(declare-sort var352 0)
(declare-sort var1485 0)
(declare-sort var1280 0)
(declare-sort var3730 0)
(declare-sort var747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-737275706 (var352 Int Int) void)
(declare-fun cast-from-var3422-to-var352 (var3422) var352)
(declare-fun groupDirName/-453937626 (var3422) String)
(declare-fun var1485-init () var1485)
(declare-fun <init>/-1681595970 (var1485 String) void)
(declare-fun exists/1072868559 (var1485) Bool)
(declare-fun isDirectory/-2122094196 (var1485) Bool)
(declare-fun var3730-init () var3730)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-241059285 (var3730 String var747) void)
(declare-fun cast-from-var1280-to-var747 (var1280) var747)
(declare-const null-var3422 var3422)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1280 var1280)
(declare-const var2915 var3422) ; Statement: r0 := @this: org.stringtemplate.v4.STGroupDir 
(assert (not (= var2915 null-var3422)))
(declare-const var1501 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1501 null-String)))
(declare-const var3140 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var3140 null-Int)))
(declare-const var2646 Int) ; Statement: c1 := @parameter2: char 
(assert (not (= var2646 null-Int)))
(assert true)
;(assert (<init>/-737275706 (cast-from-var3422-to-var352 var2915) var3140 var2646)) ; Statement: specialinvoke r0.<org.stringtemplate.v4.STGroup: void <init>(char,char)>(c0, c1) 

(declare-const var2915!1 var3422)
(declare-const var3140!1 Int)
(declare-const var2646!1 Int)
(declare-const var2915!2 var3422)
(assert (not (= var2915!2 null-var3422)))
(assert (= (groupDirName/-453937626 var2915!2) var1501)) ; Statement: r0.<org.stringtemplate.v4.STGroupDir: java.lang.String groupDirName> = r1 
(define-const var3514 var1485 var1485-init) ; Statement: $r2 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var3514 var1501)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var3514!1 var1485)
(declare-const var1501!1 String)
(assert true)
(define-const var669 Bool (exists/1072868559 var3514!1)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var669 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3803 Bool (isDirectory/-2122094196 var3514!1)) ; Statement: $z2 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var3803 1 0) 0))) ; Negate: Cond: $z2 == 0  
(declare-const var1153 var1280) ; Statement: $r33 := @caughtexception 
(assert (not (= var1153 null-var1280)))
(define-const var2993 var3730 var3730-init) ; Statement: $r34 = new org.stringtemplate.v4.compiler.STException 
(define-const var46 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var46)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var46!1 String)
(assert (= var46!1 ""))
(assert true)
(define-const var2641 String (append/672562846 var46!1 "can\u0027t load dir ")) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t load dir ") 
(declare-const var46!2 String)
(assert (= var46!2 (str.++ var46!1 "can\u0027t load dir ")))
(assert true)
(define-const var2971 String (append/672562846 var2641 var1501!1)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2641!1 String)
(assert (= var2641!1 (str.++ var2641 var1501!1)))
(assert true)
(define-const var310 String (toString/-2075883882 var2971)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-241059285 var2993 var310 (cast-from-var1280-to-var747 var1153))) ; Statement: specialinvoke $r34.<org.stringtemplate.v4.compiler.STException: void <init>(java.lang.String,java.lang.Exception)>($r38, $r33) 

(declare-const var2993!1 var3730)
(declare-const var310!1 String)
(declare-const var1153!1 var1280)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-737275706=([org.stringtemplate.v4.STGroup, char, char], void), cast-from-var3422-to-var352=([org.stringtemplate.v4.STGroupDir], org.stringtemplate.v4.STGroup), groupDirName/-453937626=([org.stringtemplate.v4.STGroupDir], java.lang.String), var1485-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), isDirectory/-2122094196=([java.io.File], boolean), var3730-init=([], org.stringtemplate.v4.compiler.STException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-241059285=([org.stringtemplate.v4.compiler.STException, java.lang.String, java.lang.Exception], void), cast-from-var1280-to-var747=([java.net.MalformedURLException], java.lang.Exception)}
; {var3422=org.stringtemplate.v4.STGroupDir, var2915=r0, var1501=r1, var730=null_type, var3140=c0, var2646=c1, var352=org.stringtemplate.v4.STGroup, var1485=java.io.File, var3514=$r2, var669=$z0, var3803=$z2, var1280=java.net.MalformedURLException, var1153=$r33, var3730=org.stringtemplate.v4.compiler.STException, var2993=$r34, var46=$r35, var2641=$r36, var2971=$r37, var310=$r38, var747=java.lang.Exception}
; {org.stringtemplate.v4.STGroupDir=var3422, r0=var2915, r1=var1501, null_type=var730, c0=var3140, c1=var2646, org.stringtemplate.v4.STGroup=var352, java.io.File=var1485, $r2=var3514, $z0=var669, $z2=var3803, java.net.MalformedURLException=var1280, $r33=var1153, org.stringtemplate.v4.compiler.STException=var3730, $r34=var2993, $r35=var46, $r36=var2641, $r37=var2971, $r38=var310, java.lang.Exception=var747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.STGroupDir;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	c1 := @parameter2: char;	specialinvoke r0.<org.stringtemplate.v4.STGroup: void <init>(char,char)>(c0, c1);	r0.<org.stringtemplate.v4.STGroupDir: java.lang.String groupDirName> = r1;	$r2 = new java.io.File;	specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r1);	$z0 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r33 := @caughtexception;	$r34 = new org.stringtemplate.v4.compiler.STException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t load dir ");	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<org.stringtemplate.v4.compiler.STException: void <init>(java.lang.String,java.lang.Exception)>($r38, $r33);	throw $r34
;block_num 3