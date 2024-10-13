(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3288 0)
(declare-sort var3748 0)
(declare-sort var1735 0)
(declare-sort var3519 0)
(declare-sort var735 0)
(declare-sort var548 0)
(declare-sort var931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var548-init () (Array Int var548))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var548 (String) var548)
(declare-fun genCodeLine/787715242 (var735 (Array Int var548)) void)
(declare-fun var3748_keySet/-712633290 (var3748) var931)
(declare-fun var931_iterator/1911472585 (var931) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3288 var3288)
(declare-const null-var3748 var3748)
(declare-const null-var1735 var1735)
(declare-const null-String String)
(declare-const null-var735 var735)
(declare-const null-__Array__Int__var548__ (Array Int var548))
(declare-const var3167 var3288) ; Statement: r35 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator 
(assert (not (= var3167 null-var3288)))
(declare-const var2049 var3748) ; Statement: r8 := @parameter0: java.util.Map 
(assert (not (= var2049 null-var3748)))
(declare-const var1772 var1735) ; Statement: r19 := @parameter1: org.javacc.parser.TokenizerData$MatchType 
(assert (not (= var1772 null-var1735)))
(declare-const var778 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var778 null-String)))
(declare-const var3941 var735) ; Statement: r0 := @parameter3: org.javacc.parser.CodeGenerator 
(assert (not (= var3941 null-var735)))
(define-const var3962 (Array Int var548) arr-var548-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var603 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var603)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var603!1 String)
(assert (= var603!1 ""))
(assert true)
(define-const var1307 String (append/672562846 var603!1 "  switch(")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  switch(") 
(declare-const var603!2 String)
(assert (= var603!2 (str.++ var603!1 "  switch(")))
(assert true)
(define-const var1997 String (append/672562846 var1307 var778)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1307!1 String)
(assert (= var1307!1 (str.++ var1307 var778)))
(assert true)
(define-const var3571 String (append/672562846 var1997 ") {")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") {") 
(declare-const var1997!1 String)
(assert (= var1997!1 (str.++ var1997 ") {")))
(assert true)
(define-const var2180 String (toString/-2075883882 var3571)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3962!1 (Array Int var548))
(assert (not (= var3962!1 null-__Array__Int__var548__)))
(assert (= (select var3962!1 0) (cast-from-String-to-var548 var2180))) ; Statement: $r1[0] = $r7 
(assert true)
;(assert (genCodeLine/787715242 var3941 var3962!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var3941!1 var735)
(declare-const var3962!2 (Array Int var548))
(define-const var1303 var931 (var3748_keySet/-712633290 var2049)) ; Statement: $r9 = interfaceinvoke r8.<java.util.Map: java.util.Set keySet()>() 
(define-const var867 Iterator (var931_iterator/1911472585 var1303)) ; Statement: r10 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var997 Bool (Iterator_hasNext/-1669924200 var867)) ; Statement: $z0 = interfaceinvoke r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r11 = newarray (java.lang.Object)[1] 
(assert (= (ite var997 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1460 (Array Int var548) arr-var548-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var1460!1 (Array Int var548))
(assert (not (= var1460!1 null-__Array__Int__var548__)))
(assert (= (select var1460!1 0) (cast-from-String-to-var548 "    default: break;"))) ; Statement: $r11[0] = "    default: break;" 
(assert true)
;(assert (genCodeLine/787715242 var3941!1 var1460!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var3941!2 var735)
(declare-const var1460!2 (Array Int var548))
(define-const var2106 (Array Int var548) arr-var548-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var2106!1 (Array Int var548))
(assert (not (= var2106!1 null-__Array__Int__var548__)))
(assert (= (select var2106!1 0) (cast-from-String-to-var548 "  }"))) ; Statement: $r12[0] = "  }" 
(assert true)
;(assert (genCodeLine/787715242 var3941!2 var2106!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var3941!3 var735)
(declare-const var2106!2 (Array Int var548))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var548-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var548=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var3748_keySet/-712633290=([java.util.Map], java.util.Set), var931_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3288=org.javacc.parser.TableDrivenJavaCodeGenerator, var3167=r35, var3748=java.util.Map, var2049=r8, var1735=org.javacc.parser.TokenizerData$MatchType, var1772=r19, var778=r3, var3519=null_type, var735=org.javacc.parser.CodeGenerator, var3941=r0, var548=java.lang.Object, var3962=$r1, var603=$r2, var1307=$r4, var1997=$r5, var3571=$r6, var2180=$r7, var931=java.util.Set, var1303=$r9, var867=r10, var997=$z0, var1460=$r11, var2106=$r12}
; {org.javacc.parser.TableDrivenJavaCodeGenerator=var3288, r35=var3167, java.util.Map=var3748, r8=var2049, org.javacc.parser.TokenizerData$MatchType=var1735, r19=var1772, r3=var778, null_type=var3519, org.javacc.parser.CodeGenerator=var735, r0=var3941, java.lang.Object=var548, $r1=var3962, $r2=var603, $r4=var1307, $r5=var1997, $r6=var3571, $r7=var2180, java.util.Set=var931, $r9=var1303, r10=var867, $z0=var997, $r11=var1460, $r12=var2106}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r35 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator;	r8 := @parameter0: java.util.Map;	r19 := @parameter1: org.javacc.parser.TokenizerData$MatchType;	r3 := @parameter2: java.lang.String;	r0 := @parameter3: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  switch(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") {");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r7;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r9 = interfaceinvoke r8.<java.util.Map: java.util.Set keySet()>();	r10 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r10.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r11 = newarray (java.lang.Object)[1];	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "    default: break;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "  }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	return
;block_num 3