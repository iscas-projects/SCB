(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2582 0)
(declare-sort var686 0)
(declare-sort var1219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hsqldbVersion/1410848242 (var2582) Int)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toLowerCase/1946809429 (String var1219) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2582 var2582)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1219-ROOT var1219)
(declare-const var3983 var2582) ; Statement: r0 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var3983 null-var2582)))
(declare-const var2421 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2421 null-String)))
(declare-const var3766 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3766 null-Bool)))
(define-const var466 Int (hsqldbVersion/1410848242 var3983)) ; Statement: $i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion> 
 ; Statement: if $i0 >= 200 goto $r1 = new java.lang.StringBuilder 
(assert (not (>= var466 200))) ; Negate: Cond: $i0 >= 200  
(define-const var301 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
(define-const var2933 Int (length/-134980193 var2421)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2162 Int (+ var2933 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var301 var2162)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var301!1 String)
(declare-const var2162!1 Int)
(assert true)
(define-const var3055 String (append/672562846 var301!1 var2421)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var301!2 String)
(assert (= var301!2 (str.++ var301!1 var2421)))
(define-const var2445 var1219 var1219-ROOT) ; Statement: $r7 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2750 String (toLowerCase/1946809429 var2421 var2445)) ; Statement: $r8 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7) 
(assert true)
(define-const var472 Int (indexOf/-1209756239 var2750 "select")) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var1376 Int (+ var472 6)) ; Statement: $i4 = $i3 + 6 
 ; Statement: if z0 == 0 goto $r12 = " top ?" 
(assert (not (= (ite var3766 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var682 String " limit ? ?") ; Statement: $r12 = " limit ? ?" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1343 String (insert/1196171004 var3055 var1376 var682)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r12) 
(assert true)
(define-const var1156 String (toString/-2075883882 var1343)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {hsqldbVersion/1410848242=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2582=org.hibernate.dialect.HSQLDialect, var3983=r0, var2421=r2, var686=null_type, var3766=z0, var466=$i0, var301=$r6, var2933=$i1, var2162=$i2, var3055=$r9, var1219=java.util.Locale, var2445=$r7, var2750=$r8, var472=$i3, var1376=$i4, var682=$r12, var1343=$r10, var1156=$r11}
; {org.hibernate.dialect.HSQLDialect=var2582, r0=var3983, r2=var2421, null_type=var686, z0=var3766, $i0=var466, $r6=var301, $i1=var2933, $i2=var2162, $r9=var3055, java.util.Locale=var1219, $r7=var2445, $r8=var2750, $i3=var472, $i4=var1376, $r12=var682, $r10=var1343, $r11=var1156}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.HSQLDialect;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion>;	if $i0 >= 200 goto $r1 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 + 10;	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i2);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7);	$i3 = virtualinvoke $r8.<java.lang.String: int indexOf(java.lang.String)>("select");	$i4 = $i3 + 6;	if z0 == 0 goto $r12 = " top ?";	$r12 = " limit ? ?";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r12)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r12);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 4