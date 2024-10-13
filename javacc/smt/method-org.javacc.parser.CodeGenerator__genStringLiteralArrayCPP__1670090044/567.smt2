(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2438 0)
(declare-sort var3191 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-var3972-init () (Array Int var3972))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3972 (String) var3972)
(declare-fun genCodeLine/787715242 (var2438 (Array Int var3972)) void)
(declare-const null-var2438 var2438)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-__Array__Int__var3972__ (Array Int var3972))
(declare-const var2709 var2438) ; Statement: r1 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var2709 null-var2438)))
(declare-const var762 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var762 null-String)))
(declare-const var3866 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var3866 null-__Array__Int__String__)))
(define-const var2615 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2984 Int (getLength-Arr-String-1 var3866)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i2 >= $i0 goto $r2 = newarray (java.lang.Object)[1] 
(assert (>= var2615 var2984)) ; Cond: i2 >= $i0 
(define-const var2033 (Array Int var3972) arr-var3972-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(define-const var160 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var160)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var160!1 String)
(assert (= var160!1 ""))
(assert true)
(define-const var3368 String (append/672562846 var160!1 "static const JJString ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static const JJString ") 
(declare-const var160!2 String)
(assert (= var160!2 (str.++ var160!1 "static const JJString ")))
(assert true)
(define-const var1101 String (append/672562846 var3368 var762)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3368!1 String)
(assert (= var3368!1 (str.++ var3368 var762)))
(assert true)
(define-const var1020 String (append/672562846 var1101 "[] = {")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] = {") 
(declare-const var1101!1 String)
(assert (= var1101!1 (str.++ var1101 "[] = {")))
(assert true)
(define-const var894 String (toString/-2075883882 var1020)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2033!1 (Array Int var3972))
(assert (not (= var2033!1 null-__Array__Int__var3972__)))
(assert (= (select var2033!1 0) (cast-from-String-to-var3972 var894))) ; Statement: $r2[0] = $r8 
(assert true)
;(assert (genCodeLine/787715242 var2709 var2033!1)) ; Statement: virtualinvoke r1.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r2) 

(declare-const var2709!1 var2438)
(declare-const var2033!2 (Array Int var3972))
(define-const var3657 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3600 Int (getLength-Arr-String-1 var3866)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i3 >= $i1 goto $r9 = newarray (java.lang.Object)[1] 
(assert (>= var3657 var3600)) ; Cond: i3 >= $i1 
(define-const var3367 (Array Int var3972) arr-var3972-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var3367!1 (Array Int var3972))
(assert (not (= var3367!1 null-__Array__Int__var3972__)))
(assert (= (select var3367!1 0) (cast-from-String-to-var3972 "};"))) ; Statement: $r9[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var2709!1 var3367!1)) ; Statement: virtualinvoke r1.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var2709!2 var2438)
(declare-const var3367!2 (Array Int var3972))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), arr-var3972-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3972=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var2438=org.javacc.parser.CodeGenerator, var2709=r1, var762=r4, var3191=null_type, var3866=r0, var2615=i2, var2984=$i0, var3972=java.lang.Object, var2033=$r2, var160=$r3, var3368=$r5, var1101=$r6, var1020=$r7, var894=$r8, var3657=i3, var3600=$i1, var3367=$r9}
; {org.javacc.parser.CodeGenerator=var2438, r1=var2709, r4=var762, null_type=var3191, r0=var3866, i2=var2615, $i0=var2984, java.lang.Object=var3972, $r2=var2033, $r3=var160, $r5=var3368, $r6=var1101, $r7=var1020, $r8=var894, i3=var3657, $i1=var3600, $r9=var3367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.javacc.parser.CodeGenerator;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String[];	i2 = 0;	$i0 = lengthof r0;	if i2 >= $i0 goto $r2 = newarray (java.lang.Object)[1];	$r2 = newarray (java.lang.Object)[1];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static const JJString ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] = {");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r2[0] = $r8;	virtualinvoke r1.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r2);	i3 = 0;	$i1 = lengthof r0;	if i3 >= $i1 goto $r9 = newarray (java.lang.Object)[1];	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "};";	virtualinvoke r1.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	return
;block_num 5