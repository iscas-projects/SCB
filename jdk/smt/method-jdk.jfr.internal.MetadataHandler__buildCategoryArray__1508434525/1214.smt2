(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var840 0)
(declare-sort var2533 0)
(declare-sort var914 0)
(declare-sort var770 0)
(declare-sort var3848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var914-init () var914)
(declare-fun <init>/-325640736 (var914) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var770_add/328494887 (var770 var3848) Bool)
(declare-fun cast-from-var914-to-var770 (var914) var770)
(declare-fun cast-from-String-to-var3848 (String) var3848)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var770_toArray/-775711681 (var770 (Array Int var3848)) (Array Int var3848))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3848__ ((Array Int String)) (Array Int var3848))
(declare-fun cast-from-__Array__Int__var3848__-to-__Array__Int__String__ ((Array Int var3848)) (Array Int String))
(declare-const null-var840 var840)
(declare-const null-String String)
(declare-const var1278 var840) ; Statement: r11 := @this: jdk.jfr.internal.MetadataHandler 
(assert (not (= var1278 null-var840)))
(declare-const var880 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var880 null-String)))
(define-const var2197 var914 var914-init) ; Statement: $r12 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2197)) ; Statement: specialinvoke $r12.<java.util.ArrayList: void <init>()>() 

(declare-const var2197!1 var914)
(define-const var3398 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3398)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3398!1 String)
(assert (= var3398!1 ""))
(assert true)
(define-const var310 (Array Int Int) (toCharArray/415275702 var880)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>() 
(define-const var1142 Int (getLength-Arr-Int-1 var310)) ; Statement: i0 = lengthof r3 
(define-const var3007 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r4 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3007 var1142)) ; Cond: i2 >= i0 
(assert true)
(define-const var1785 String (toString/-2075883882 var3398!1)) ; Statement: $r4 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1997 String (trim/-847153721 var1785)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>() 
;(assert (var770_add/328494887 (cast-from-var914-to-var770 var2197!1) (cast-from-String-to-var3848 var1997))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r5) 

(declare-const var2197!2 var914)
(declare-const var1997!1 String)
(define-const var138 (Array Int String) arr-String-init) ; Statement: $r6 = newarray (java.lang.String)[0] 
(define-const var1758 (Array Int var3848) (var770_toArray/-775711681 (cast-from-var914-to-var770 var2197!2) (cast-from-__Array__Int__String__-to-__Array__Int__var3848__ var138))) ; Statement: $r7 = interfaceinvoke $r12.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r6) 
(define-const var2812 (Array Int String) (cast-from-__Array__Int__var3848__-to-__Array__Int__String__ var1758)) ; Statement: $r8 = (java.lang.String[]) $r7 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var914-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var770_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var914-to-var770=([java.util.ArrayList], java.util.List), cast-from-String-to-var3848=([java.lang.String], java.lang.Object), arr-String-init=([], java.lang.String[]), var770_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var3848__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var3848__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var840=jdk.jfr.internal.MetadataHandler, var1278=r11, var880=r2, var2533=null_type, var914=java.util.ArrayList, var2197=$r12, var3398=$r13, var310=r3, var1142=i0, var3007=i2, var1785=$r4, var1997=$r5, var770=java.util.List, var3848=java.lang.Object, var138=$r6, var1758=$r7, var2812=$r8}
; {jdk.jfr.internal.MetadataHandler=var840, r11=var1278, r2=var880, null_type=var2533, java.util.ArrayList=var914, $r12=var2197, $r13=var3398, r3=var310, i0=var1142, i2=var3007, $r4=var1785, $r5=var1997, java.util.List=var770, java.lang.Object=var3848, $r6=var138, $r7=var1758, $r8=var2812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r11 := @this: jdk.jfr.internal.MetadataHandler;	r2 := @parameter0: java.lang.String;	$r12 = new java.util.ArrayList;	specialinvoke $r12.<java.util.ArrayList: void <init>()>();	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r3;	i2 = 0;	if i2 >= i0 goto $r4 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r5);	$r6 = newarray (java.lang.String)[0];	$r7 = interfaceinvoke $r12.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r6);	$r8 = (java.lang.String[]) $r7;	return $r8
;block_num 3