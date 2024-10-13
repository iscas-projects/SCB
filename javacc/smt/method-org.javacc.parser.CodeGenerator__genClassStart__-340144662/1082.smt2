(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1897 0)
(declare-sort var2456 0)
(declare-sort var2331 0)
(declare-sort var3836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var1897) Bool)
(declare-fun arr-var2331-init () (Array Int var2331))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var2331 (String) var2331)
(declare-fun genCode/442726974 (var1897 (Array Int var2331)) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun genCommaSeperatedString/-560803196 (var1897 (Array Int String)) void)
(declare-fun genCodeLine/787715242 (var1897 (Array Int var2331)) void)
(declare-fun var3836_getOutputLanguage/-1523304050 () String)
(declare-const null-var1897 var1897)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-__Array__Int__var2331__ (Array Int var2331))
(declare-const var1774 var1897) ; Statement: r0 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var1774 null-var1897)))
(declare-const var2435 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var2435 null-String)))
(declare-const var2121 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2121 null-String)))
(declare-const var2216 (Array Int String)) ; Statement: r2 := @parameter2: java.lang.String[] 
(assert (not (= var2216 null-__Array__Int__String__)))
(declare-const var857 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var857 null-__Array__Int__String__)))
(assert true)
(define-const var3636 Bool (isJavaLanguage/-1752064482 var1774)) ; Statement: z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if z0 == 0 goto $r15 = newarray (java.lang.Object)[1] 
(assert (= (ite var3636 1 0) 0)) ; Cond: z0 == 0 
(define-const var178 (Array Int var2331) arr-var2331-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(define-const var3743 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3743)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3743!1 String)
(assert (= var3743!1 ""))
(assert true)
(define-const var1182 String (append/672562846 var3743!1 "class ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ") 
(declare-const var3743!2 String)
(assert (= var3743!2 (str.++ var3743!1 "class ")))
(assert true)
(define-const var1730 String (append/672562846 var1182 var2121)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1182!1 String)
(assert (= var1182!1 (str.++ var1182 var2121)))
(assert true)
(define-const var2040 String (toString/-2075883882 var1730)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var178!1 (Array Int var2331))
(assert (not (= var178!1 null-__Array__Int__var2331__)))
(assert (= (select var178!1 0) (cast-from-String-to-var2331 var2040))) ; Statement: $r15[0] = $r19 
(assert true)
;(assert (genCode/442726974 var1774 var178!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r15) 

(declare-const var1774!1 var1897)
(declare-const var178!2 (Array Int var2331))
 ; Statement: if z0 == 0 goto $i0 = lengthof r2 
(assert (not (= (ite var3636 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3671 Int (getLength-Arr-String-1 var2216)) ; Statement: $i2 = lengthof r2 
 ; Statement: if $i2 != 1 goto $i3 = lengthof r4 
(assert (not (= var3671 1))) ; Cond: $i2 != 1 
(define-const var3926 Int (getLength-Arr-String-1 var857)) ; Statement: $i3 = lengthof r4 
 ; Statement: if $i3 == 0 goto specialinvoke r0.<org.javacc.parser.CodeGenerator: void genCommaSeperatedString(java.lang.String[])>(r4) 
(assert (= var3926 0)) ; Cond: $i3 == 0 
(assert true)
;(assert (genCommaSeperatedString/-560803196 var1774!1 var857)) ; Statement: specialinvoke r0.<org.javacc.parser.CodeGenerator: void genCommaSeperatedString(java.lang.String[])>(r4) 

(declare-const var1774!2 var1897)
(declare-const var857!1 (Array Int String))
(define-const var3341 (Array Int var2331) arr-var2331-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var3341!1 (Array Int var2331))
(assert (not (= var3341!1 null-__Array__Int__var2331__)))
(assert (= (select var3341!1 0) (cast-from-String-to-var2331 " {"))) ; Statement: $r20[0] = " {" 
(assert true)
;(assert (genCodeLine/787715242 var1774!2 var3341!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var1774!3 var1897)
(declare-const var3341!2 (Array Int var2331))
(define-const var2756 String var3836_getOutputLanguage/-1523304050) ; Statement: $r21 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var3614 Bool (= var2756 "c++")) ; Statement: $z1 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3614 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), arr-var2331-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var2331=([java.lang.String], java.lang.Object), genCode/442726974=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), getLength-Arr-String-1=([java.lang.String[]], int), genCommaSeperatedString/-560803196=([org.javacc.parser.CodeGenerator, java.lang.String[]], void), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var3836_getOutputLanguage/-1523304050=([], java.lang.String)}
; {var1897=org.javacc.parser.CodeGenerator, var1774=r0, var2435=r14, var2456=null_type, var2121=r1, var2216=r2, var857=r4, var3636=z0, var2331=java.lang.Object, var178=$r15, var3743=$r16, var1182=$r17, var1730=$r18, var2040=$r19, var3671=$i2, var3926=$i3, var3341=$r20, var3836=org.javacc.parser.Options, var2756=$r21, var3614=$z1}
; {org.javacc.parser.CodeGenerator=var1897, r0=var1774, r14=var2435, null_type=var2456, r1=var2121, r2=var2216, r4=var857, z0=var3636, java.lang.Object=var2331, $r15=var178, $r16=var3743, $r17=var1182, $r18=var1730, $r19=var2040, $i2=var3671, $i3=var3926, $r20=var3341, org.javacc.parser.Options=var3836, $r21=var2756, $z1=var3614}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.javacc.parser.CodeGenerator;	r14 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String[];	r4 := @parameter3: java.lang.String[];	z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if z0 == 0 goto $r15 = newarray (java.lang.Object)[1];	$r15 = newarray (java.lang.Object)[1];	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r15[0] = $r19;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r15);	if z0 == 0 goto $i0 = lengthof r2;	$i2 = lengthof r2;	if $i2 != 1 goto $i3 = lengthof r4;	$i3 = lengthof r4;	if $i3 == 0 goto specialinvoke r0.<org.javacc.parser.CodeGenerator: void genCommaSeperatedString(java.lang.String[])>(r4);	specialinvoke r0.<org.javacc.parser.CodeGenerator: void genCommaSeperatedString(java.lang.String[])>(r4);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = " {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto return;	return
;block_num 6