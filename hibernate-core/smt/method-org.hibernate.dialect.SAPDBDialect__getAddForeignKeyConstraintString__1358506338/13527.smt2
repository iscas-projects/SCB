(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1698 0)
(declare-sort var1744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1698 var1698)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var1355 var1698) ; Statement: r16 := @this: org.hibernate.dialect.SAPDBDialect 
(assert (not (= var1355 null-var1698)))
(declare-const var1741 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1741 null-String)))
(declare-const var1936 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var1936 null-__Array__Int__String__)))
(declare-const var992 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var992 null-String)))
(declare-const var2595 (Array Int String)) ; Statement: r12 := @parameter3: java.lang.String[] 
(assert (not (= var2595 null-__Array__Int__String__)))
(declare-const var819 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var819 null-Bool)))
(define-const var3420 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3420 30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30) 

(declare-const var3420!1 String)
(declare-const var1798 Int)
(assert true)
(define-const var203 String (append/672562846 var3420!1 " foreign key ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" foreign key ") 
(declare-const var3420!2 String)
(assert (= var3420!2 (str.++ var3420!1 " foreign key ")))
(assert true)
(define-const var2655 String (append/672562846 var203 var1741)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var203!1 String)
(assert (= var203!1 (str.++ var203 var1741)))
(assert true)
(define-const var2887 String (append/672562846 var2655 " (")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2655!1 String)
(assert (= var2655!1 (str.++ var2655 " (")))
(define-const var3304 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1936))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r4) 
(assert true)
(define-const var1645 String (append/672562846 var2887 var3304)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2887!1 String)
(assert (= var2887!1 (str.++ var2887 var3304)))
(assert true)
(define-const var2594 String (append/672562846 var1645 ") references ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") references ") 
(declare-const var1645!1 String)
(assert (= var1645!1 (str.++ var1645 ") references ")))
(assert true)
(define-const var2150 String (append/672562846 var2594 var992)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var2594!1 String)
(assert (= var2594!1 (str.++ var2594 var992)))
 ; Statement: if z0 != 0 goto $r11 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var819 1 0) 0))) ; Cond: z0 != 0 
(assert true)
(define-const var987 String (toString/-2075883882 var2150)) ; Statement: $r11 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1698=org.hibernate.dialect.SAPDBDialect, var1355=r16, var1741=r1, var1744=null_type, var1936=r4, var992=r8, var2595=r12, var819=z0, var3420=$r0, var1798=30, var203=$r2, var2655=$r3, var2887=$r6, var3304=$r5, var1645=$r7, var2594=$r9, var2150=r10, var987=$r11}
; {org.hibernate.dialect.SAPDBDialect=var1698, r16=var1355, r1=var1741, null_type=var1744, r4=var1936, r8=var992, r12=var2595, z0=var819, $r0=var3420, 30=var1798, $r2=var203, $r3=var2655, $r6=var2887, $r5=var3304, $r7=var1645, $r9=var2594, r10=var2150, $r11=var987}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.SAPDBDialect;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	r8 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.String[];	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" foreign key ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") references ");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	if z0 != 0 goto $r11 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2