(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort var3921 0)
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
(declare-const null-var793 var793)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var1018 var793) ; Statement: r16 := @this: org.hibernate.dialect.InformixDialect 
(assert (not (= var1018 null-var793)))
(declare-const var570 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var570 null-String)))
(declare-const var2185 (Array Int String)) ; Statement: r2 := @parameter1: java.lang.String[] 
(assert (not (= var2185 null-__Array__Int__String__)))
(declare-const var2894 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2894 null-String)))
(declare-const var1809 (Array Int String)) ; Statement: r12 := @parameter3: java.lang.String[] 
(assert (not (= var1809 null-__Array__Int__String__)))
(declare-const var2161 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2161 null-Bool)))
(define-const var778 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var778 30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30) 

(declare-const var778!1 String)
(declare-const var2522 Int)
(assert true)
(define-const var3425 String (append/672562846 var778!1 " add constraint ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ") 
(declare-const var778!2 String)
(assert (= var778!2 (str.++ var778!1 " add constraint ")))
(assert true)
(define-const var691 String (append/672562846 var3425 " foreign key (")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" foreign key (") 
(declare-const var3425!1 String)
(assert (= var3425!1 (str.++ var3425 " foreign key (")))
(define-const var2744 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2185))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2) 
(assert true)
(define-const var2628 String (append/672562846 var691 var2744)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var691!1 String)
(assert (= var691!1 (str.++ var691 var2744)))
(assert true)
(define-const var3204 String (append/672562846 var2628 ") references ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") references ") 
(declare-const var2628!1 String)
(assert (= var2628!1 (str.++ var2628 ") references ")))
(assert true)
(define-const var1931 String (append/672562846 var3204 var2894)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3204!1 String)
(assert (= var3204!1 (str.++ var3204 var2894)))
 ; Statement: if z0 != 0 goto $r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" constraint ") 
(assert (not (= (ite var2161 1 0) 0))) ; Cond: z0 != 0 
(assert true)
(define-const var1211 String (append/672562846 var1931 " constraint ")) ; Statement: $r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" constraint ") 
(declare-const var1931!1 String)
(assert (= var1931!1 (str.++ var1931 " constraint ")))
(assert true)
;(assert (append/672562846 var1211 var570)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var1211!1 String)
(assert (= var1211!1 (str.++ var1211 var570)))
(assert true)
(define-const var375 String (toString/-2075883882 var1931!1)) ; Statement: $r11 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var793=org.hibernate.dialect.InformixDialect, var1018=r16, var570=r9, var3921=null_type, var2185=r2, var2894=r6, var1809=r12, var2161=z0, var778=$r0, var2522=30, var3425=$r1, var691=$r4, var2744=$r3, var2628=$r5, var3204=$r7, var1931=r8, var1211=$r10, var375=$r11}
; {org.hibernate.dialect.InformixDialect=var793, r16=var1018, r9=var570, null_type=var3921, r2=var2185, r6=var2894, r12=var1809, z0=var2161, $r0=var778, 30=var2522, $r1=var3425, $r4=var691, $r3=var2744, $r5=var2628, $r7=var3204, r8=var1931, $r10=var1211, $r11=var375}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.InformixDialect;	r9 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String[];	r6 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.String[];	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30);	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ");	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" foreign key (");	$r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") references ");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z0 != 0 goto $r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" constraint ");	$r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" constraint ");	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r11 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2