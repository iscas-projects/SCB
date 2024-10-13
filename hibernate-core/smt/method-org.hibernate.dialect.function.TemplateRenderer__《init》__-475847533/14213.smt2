(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1909 0)
(declare-sort var2102 0)
(declare-sort var3421 0)
(declare-sort var1780 0)
(declare-sort var1718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3421) void)
(declare-fun cast-from-var1909-to-var3421 (var1909) var3421)
(declare-fun template/1852097125 (var1909) String)
(declare-fun var1780-init () var1780)
(declare-fun <init>/-325640736 (var1780) void)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/-171891354 (String) Int)
(declare-fun var1718_size/-959786421 (var1718) Int)
(declare-fun cast-from-var1780-to-var1718 (var1780) var1718)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1718_toArray/-775711681 (var1718 (Array Int var3421)) (Array Int var3421))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3421__ ((Array Int String)) (Array Int var3421))
(declare-fun cast-from-__Array__Int__var3421__-to-__Array__Int__String__ ((Array Int var3421)) (Array Int String))
(declare-fun chunks/1852097125 (var1909) (Array Int String))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun paramIndexes/1852097125 (var1909) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1909 var1909)
(declare-const null-String String)
(declare-const var3516 var1909) ; Statement: r0 := @this: org.hibernate.dialect.function.TemplateRenderer 
(assert (not (= var3516 null-var1909)))
(declare-const var1583 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1583 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1909-to-var3421 var3516))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3516!1 var1909)
(declare-const var3516!2 var1909)
(assert (not (= var3516!2 null-var1909)))
(assert (= (template/1852097125 var3516!2) var1583)) ; Statement: r0.<org.hibernate.dialect.function.TemplateRenderer: java.lang.String template> = r1 
(define-const var3614 var1780 var1780-init) ; Statement: $r18 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3614)) ; Statement: specialinvoke $r18.<java.util.ArrayList: void <init>()>() 

(declare-const var3614!1 var1780)
(define-const var1346 var1780 var1780-init) ; Statement: $r19 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1346)) ; Statement: specialinvoke $r19.<java.util.ArrayList: void <init>()>() 

(declare-const var1346!1 var1780)
(define-const var3021 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3021 10)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>(10) 

(declare-const var3021!1 String)
(declare-const var3953 Int)
(define-const var2832 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2832 2)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>(int)>(2) 

(declare-const var2832!1 String)
(declare-const var3929 Int)
(define-const var1620 Int 0) ; Statement: i8 = 0 
(assert true)
(define-const var160 Int (length/-134980193 var1583)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i0 goto $i1 = virtualinvoke $r20.<java.lang.StringBuilder: int length()>() 
(assert (>= var1620 var160)) ; Cond: i8 >= i0 
(assert true)
(define-const var1925 Int (length/-171891354 var3021!1)) ; Statement: $i1 = virtualinvoke $r20.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto $i2 = interfaceinvoke $r18.<java.util.List: int size()>() 
(assert (<= var1925 0)) ; Cond: $i1 <= 0 
(define-const var50 Int (var1718_size/-959786421 (cast-from-var1780-to-var1718 var3614!1))) ; Statement: $i2 = interfaceinvoke $r18.<java.util.List: int size()>() 
(define-const var286 (Array Int String) arr-String-init) ; Statement: $r6 = newarray (java.lang.String)[$i2] 
(define-const var1710 (Array Int var3421) (var1718_toArray/-775711681 (cast-from-var1780-to-var1718 var3614!1) (cast-from-__Array__Int__String__-to-__Array__Int__var3421__ var286))) ; Statement: $r7 = interfaceinvoke $r18.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r6) 
(define-const var2824 (Array Int String) (cast-from-__Array__Int__var3421__-to-__Array__Int__String__ var1710)) ; Statement: $r8 = (java.lang.String[]) $r7 
(declare-const var3516!3 var1909)
(assert (not (= var3516!3 null-var1909)))
(assert (= (chunks/1852097125 var3516!3) var2824)) ; Statement: r0.<org.hibernate.dialect.function.TemplateRenderer: java.lang.String[] chunks> = $r8 
(define-const var1597 Int (var1718_size/-959786421 (cast-from-var1780-to-var1718 var1346!1))) ; Statement: $i3 = interfaceinvoke $r19.<java.util.List: int size()>() 
(define-const var439 (Array Int Int) arr-Int-init) ; Statement: $r9 = newarray (int)[$i3] 
(declare-const var3516!4 var1909)
(assert (not (= var3516!4 null-var1909)))
(assert (= (paramIndexes/1852097125 var3516!4) var439)) ; Statement: r0.<org.hibernate.dialect.function.TemplateRenderer: int[] paramIndexes> = $r9 
(define-const var2261 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
(define-const var1875 (Array Int Int) (paramIndexes/1852097125 var3516!4)) ; Statement: $r17 = r0.<org.hibernate.dialect.function.TemplateRenderer: int[] paramIndexes> 
(define-const var1331 Int (getLength-Arr-Int-1 var1875)) ; Statement: $i12 = lengthof $r17 
 ; Statement: if i11 >= $i12 goto return 
(assert (>= var2261 var1331)) ; Cond: i11 >= $i12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1909-to-var3421=([org.hibernate.dialect.function.TemplateRenderer], java.lang.Object), template/1852097125=([org.hibernate.dialect.function.TemplateRenderer], java.lang.String), var1780-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), length/-134980193=([java.lang.String], int), length/-171891354=([java.lang.StringBuilder], int), var1718_size/-959786421=([java.util.List], int), cast-from-var1780-to-var1718=([java.util.ArrayList], java.util.List), arr-String-init=([], java.lang.String[]), var1718_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var3421__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var3421__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[]), chunks/1852097125=([org.hibernate.dialect.function.TemplateRenderer], java.lang.String[]), arr-Int-init=([], int[]), paramIndexes/1852097125=([org.hibernate.dialect.function.TemplateRenderer], int[]), getLength-Arr-Int-1=([int[]], int)}
; {var1909=org.hibernate.dialect.function.TemplateRenderer, var3516=r0, var1583=r1, var2102=null_type, var3421=java.lang.Object, var1780=java.util.ArrayList, var3614=$r18, var1346=$r19, var3021=$r20, var3953=10, var2832=$r21, var3929=2, var1620=i8, var160=i0, var1925=$i1, var1718=java.util.List, var50=$i2, var286=$r6, var1710=$r7, var2824=$r8, var1597=$i3, var439=$r9, var2261=i11, var1875=$r17, var1331=$i12}
; {org.hibernate.dialect.function.TemplateRenderer=var1909, r0=var3516, r1=var1583, null_type=var2102, java.lang.Object=var3421, java.util.ArrayList=var1780, $r18=var3614, $r19=var1346, $r20=var3021, 10=var3953, $r21=var2832, 2=var3929, i8=var1620, i0=var160, $i1=var1925, java.util.List=var1718, $i2=var50, $r6=var286, $r7=var1710, $r8=var2824, $i3=var1597, $r9=var439, i11=var2261, $r17=var1875, $i12=var1331}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: org.hibernate.dialect.function.TemplateRenderer;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.function.TemplateRenderer: java.lang.String template> = r1;	$r18 = new java.util.ArrayList;	specialinvoke $r18.<java.util.ArrayList: void <init>()>();	$r19 = new java.util.ArrayList;	specialinvoke $r19.<java.util.ArrayList: void <init>()>();	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>(int)>(10);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>(int)>(2);	i8 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i8 >= i0 goto $i1 = virtualinvoke $r20.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke $r20.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $i2 = interfaceinvoke $r18.<java.util.List: int size()>();	$i2 = interfaceinvoke $r18.<java.util.List: int size()>();	$r6 = newarray (java.lang.String)[$i2];	$r7 = interfaceinvoke $r18.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r6);	$r8 = (java.lang.String[]) $r7;	r0.<org.hibernate.dialect.function.TemplateRenderer: java.lang.String[] chunks> = $r8;	$i3 = interfaceinvoke $r19.<java.util.List: int size()>();	$r9 = newarray (int)[$i3];	r0.<org.hibernate.dialect.function.TemplateRenderer: int[] paramIndexes> = $r9;	i11 = 0;	$r17 = r0.<org.hibernate.dialect.function.TemplateRenderer: int[] paramIndexes>;	$i12 = lengthof $r17;	if i11 >= $i12 goto return;	return
;block_num 6