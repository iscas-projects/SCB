(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3414 0)
(declare-sort var1514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3414_checkNonnegative/2010596707 (Int) void)
(declare-fun var3414_advance/-1019384132 (Iterator Int) Int)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1514-init () var1514)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1514 String) void)
(declare-const null-Iterator Iterator)
(declare-const null-Int Int)
(declare-const var2760 Iterator) ; Statement: r0 := @parameter0: java.util.Iterator 
(assert (not (= var2760 null-Iterator)))
(declare-const var1986 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1986 null-Int)))
;(assert (var3414_checkNonnegative/2010596707 var1986)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: void checkNonnegative(int)>(i0) 

(declare-const var1986!1 Int)
(define-const var2932 Int (var3414_advance/-1019384132 var2760 var1986!1)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: int advance(java.util.Iterator,int)>(r0, i0) 
(define-const var3153 Bool (Iterator_hasNext/-1669924200 var2760)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var3153 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3908 var1514 var1514-init) ; Statement: $r2 = new java.lang.IndexOutOfBoundsException 
(define-const var1803 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1803)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1803!1 String)
(assert (= var1803!1 ""))
(assert true)
(define-const var3818 String (append/672562846 var1803!1 "position (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position (") 
(declare-const var1803!2 String)
(assert (= var1803!2 (str.++ var1803!1 "position (")))
(assert true)
(define-const var335 String (append/-1001720160 var3818 var1986!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3818!1 String)
(assert (str.prefixof var3818 var3818!1))
(assert true)
(define-const var2426 String (append/672562846 var335 ") must be less than the number of elements that remained (")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be less than the number of elements that remained (") 
(declare-const var335!1 String)
(assert (= var335!1 (str.++ var335 ") must be less than the number of elements that remained (")))
(assert true)
(define-const var3984 String (append/-1001720160 var2426 var2932)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2426!1 String)
(assert (str.prefixof var2426 var2426!1))
(assert true)
(define-const var139 String (append/672562846 var3984 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3984!1 String)
(assert (= var3984!1 (str.++ var3984 ")")))
(assert true)
(define-const var3668 String (toString/-2075883882 var139)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var3908 var3668)) ; Statement: specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9) 

(declare-const var3908!1 var1514)
(declare-const var3668!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3414_checkNonnegative/2010596707=([int], void), var3414_advance/-1019384132=([java.util.Iterator, int], int), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1514-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2760=r0, var1986=i0, var3414=com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators, var2932=i1, var3153=$z0, var1514=java.lang.IndexOutOfBoundsException, var3908=$r2, var1803=$r3, var3818=$r4, var335=$r5, var2426=$r6, var3984=$r7, var139=$r8, var3668=$r9}
; {r0=var2760, i0=var1986, com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators=var3414, i1=var2932, $z0=var3153, java.lang.IndexOutOfBoundsException=var1514, $r2=var3908, $r3=var1803, $r4=var3818, $r5=var335, $r6=var2426, $r7=var3984, $r8=var139, $r9=var3668}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Iterator;	i0 := @parameter1: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: void checkNonnegative(int)>(i0);	i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: int advance(java.util.Iterator,int)>(r0, i0);	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = new java.lang.IndexOutOfBoundsException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be less than the number of elements that remained (");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2