(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1314 0)
(declare-sort var1182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun quote/1287717023 (var1314 String) String)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1314 var1314)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var1980 var1314) ; Statement: r1 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1980 null-var1314)))
(declare-const var2759 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2759 null-String)))
(declare-const var2187 (Array Int String)) ; Statement: r6 := @parameter1: java.lang.String[] 
(assert (not (= var2187 null-__Array__Int__String__)))
(declare-const var870 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var870 null-String)))
(declare-const var3853 (Array Int String)) ; Statement: r13 := @parameter3: java.lang.String[] 
(assert (not (= var3853 null-__Array__Int__String__)))
(declare-const var1608 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1608 null-Bool)))
(define-const var1961 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1961 30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30) 

(declare-const var1961!1 String)
(declare-const var312 Int)
(assert true)
(define-const var2058 String (append/672562846 var1961!1 " add constraint ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ") 
(declare-const var1961!2 String)
(assert (= var1961!2 (str.++ var1961!1 " add constraint ")))
(assert true)
(define-const var3304 String (quote/1287717023 var1980 var2759)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>(r2) 
(assert true)
(define-const var3092 String (append/672562846 var2058 var3304)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2058!1 String)
(assert (= var2058!1 (str.++ var2058 var3304)))
(assert true)
(define-const var3741 String (append/672562846 var3092 " foreign key (")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" foreign key (") 
(declare-const var3092!1 String)
(assert (= var3092!1 (str.++ var3092 " foreign key (")))
(define-const var495 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2187))) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r6) 
(assert true)
(define-const var1079 String (append/672562846 var3741 var495)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3741!1 String)
(assert (= var3741!1 (str.++ var3741 var495)))
(assert true)
(define-const var2157 String (append/672562846 var1079 ") references ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") references ") 
(declare-const var1079!1 String)
(assert (= var1079!1 (str.++ var1079 ") references ")))
(assert true)
;(assert (append/672562846 var2157 var870)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2157!1 String)
(assert (= var2157!1 (str.++ var2157 var870)))
 ; Statement: if z0 != 0 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1608 1 0) 0))) ; Cond: z0 != 0 
(assert true)
(define-const var3117 String (toString/-2075883882 var1961!2)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), quote/1287717023=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1314=org.hibernate.dialect.Dialect, var1980=r1, var2759=r2, var1182=null_type, var2187=r6, var870=r10, var3853=r13, var1608=z0, var1961=$r0, var312=30, var2058=$r4, var3304=$r3, var3092=$r5, var3741=$r8, var495=$r7, var1079=$r9, var2157=$r11, var3117=$r12}
; {org.hibernate.dialect.Dialect=var1314, r1=var1980, r2=var2759, null_type=var1182, r6=var2187, r10=var870, r13=var3853, z0=var1608, $r0=var1961, 30=var312, $r4=var2058, $r3=var3304, $r5=var3092, $r8=var3741, $r7=var495, $r9=var1079, $r11=var2157, $r12=var3117}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Dialect;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String[];	r10 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String[];	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" foreign key (");	$r7 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") references ");	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	if z0 != 0 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2