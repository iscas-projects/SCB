(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1876 0)
(declare-sort var955 0)
(declare-sort var699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var955-init () (Array Int var955))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var699_getLongType/-387263599 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var955 (String) var955)
(declare-fun genCodeLine/787715242 (var1876 (Array Int var955)) void)
(declare-fun isJavaLanguage/-1752064482 (var1876) Bool)
(declare-const null-var1876 var1876)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var955__ (Array Int var955))
(declare-const var3766 var1876) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3766 null-var1876)))
(declare-const var3619 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3619 null-Int)))
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var3619 0)))) ; Negate: Cond: i0 != 0  
(define-const var3219 (Array Int var955) arr-var955-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(define-const var2700 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2700)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2700!1 String)
(assert (= var2700!1 ""))
(assert true)
(define-const var1127 String (append/672562846 var2700!1 "         ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("         ") 
(declare-const var2700!2 String)
(assert (= var2700!2 (str.++ var2700!1 "         ")))
(define-const var1680 String var699_getLongType/-387263599) ; Statement: $r20 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>() 
(assert true)
(define-const var140 String (append/672562846 var1127 var1680)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1127!1 String)
(assert (= var1127!1 (str.++ var1127 var1680)))
(assert true)
(define-const var2389 String (append/672562846 var140 " l = 1L << curChar;")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l = 1L << curChar;") 
(declare-const var140!1 String)
(assert (= var140!1 (str.++ var140 " l = 1L << curChar;")))
(assert true)
(define-const var581 String (toString/-2075883882 var2389)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3219!1 (Array Int var955))
(assert (not (= var3219!1 null-__Array__Int__var955__)))
(assert (= (select var3219!1 0) (cast-from-String-to-var955 var581))) ; Statement: $r18[0] = $r24 
(assert true)
;(assert (genCodeLine/787715242 var3766 var3219!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var3766!1 var1876)
(declare-const var3219!2 (Array Int var955))
(assert true)
(define-const var282 Bool (isJavaLanguage/-1752064482 var3766!1)) ; Statement: $z3 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z3 != 0 goto $r34 = newarray (java.lang.Object)[1] 
(assert (not (= (ite var282 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3688 (Array Int var955) arr-var955-init) ; Statement: $r34 = newarray (java.lang.Object)[1] 
(declare-const var3688!1 (Array Int var955))
(assert (not (= var3688!1 null-__Array__Int__var955__)))
(assert (= (select var3688!1 0) (cast-from-String-to-var955 "         do"))) ; Statement: $r34[0] = "         do" 
(assert true)
;(assert (genCodeLine/787715242 var3766!1 var3688!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r34) 

(declare-const var3766!2 var1876)
(declare-const var3688!2 (Array Int var955))
(define-const var3581 (Array Int var955) arr-var955-init) ; Statement: $r35 = newarray (java.lang.Object)[1] 
(declare-const var3581!1 (Array Int var955))
(assert (not (= var3581!1 null-__Array__Int__var955__)))
(assert (= (select var3581!1 0) (cast-from-String-to-var955 "         {"))) ; Statement: $r35[0] = "         {" 
(assert true)
;(assert (genCodeLine/787715242 var3766!2 var3581!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r35) 

(declare-const var3766!3 var1876)
(declare-const var3581!2 (Array Int var955))
(define-const var765 (Array Int var955) arr-var955-init) ; Statement: $r36 = newarray (java.lang.Object)[1] 
(declare-const var765!1 (Array Int var955))
(assert (not (= var765!1 null-__Array__Int__var955__)))
(assert (= (select var765!1 0) (cast-from-String-to-var955 "            switch(jjstateSet[--i])"))) ; Statement: $r36[0] = "            switch(jjstateSet[--i])" 
(assert true)
;(assert (genCodeLine/787715242 var3766!3 var765!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r36) 

(declare-const var3766!4 var1876)
(declare-const var765!2 (Array Int var955))
(define-const var1401 (Array Int var955) arr-var955-init) ; Statement: $r37 = newarray (java.lang.Object)[1] 
(declare-const var1401!1 (Array Int var955))
(assert (not (= var1401!1 null-__Array__Int__var955__)))
(assert (= (select var1401!1 0) (cast-from-String-to-var955 "            {"))) ; Statement: $r37[0] = "            {" 
(assert true)
;(assert (genCodeLine/787715242 var3766!4 var1401!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37) 

(declare-const var3766!5 var1876)
(declare-const var1401!2 (Array Int var955))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var955-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var699_getLongType/-387263599=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var955=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean)}
; {var1876=org.javacc.parser.CodeGenerator, var3766=r0, var3619=i0, var955=java.lang.Object, var3219=$r18, var2700=$r19, var1127=$r21, var699=org.javacc.parser.Options, var1680=$r20, var140=$r22, var2389=$r23, var581=$r24, var282=$z3, var3688=$r34, var3581=$r35, var765=$r36, var1401=$r37}
; {org.javacc.parser.CodeGenerator=var1876, r0=var3766, i0=var3619, java.lang.Object=var955, $r18=var3219, $r19=var2700, $r21=var1127, org.javacc.parser.Options=var699, $r20=var1680, $r22=var140, $r23=var2389, $r24=var581, $z3=var282, $r34=var3688, $r35=var3581, $r36=var765, $r37=var1401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	i0 := @parameter1: int;	if i0 != 0 goto (branch);	$r18 = newarray (java.lang.Object)[1];	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("         ");	$r20 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l = 1L << curChar;");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r18[0] = $r24;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$z3 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z3 != 0 goto $r34 = newarray (java.lang.Object)[1];	$r34 = newarray (java.lang.Object)[1];	$r34[0] = "         do";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r34);	$r35 = newarray (java.lang.Object)[1];	$r35[0] = "         {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r35);	$r36 = newarray (java.lang.Object)[1];	$r36[0] = "            switch(jjstateSet[--i])";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r36);	$r37 = newarray (java.lang.Object)[1];	$r37[0] = "            {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37);	return
;block_num 3