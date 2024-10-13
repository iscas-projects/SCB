(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2128 0)
(declare-sort var2908 0)
(declare-sort var835 0)
(declare-sort var3305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun match/1257379692 (var2128 String Int) Bool)
(declare-fun var2128-init () var2128)
(declare-fun getLink/-2002102137 (var2128) var2128)
(declare-fun <init>/-159110067 (var2128 var2128 var835) void)
(declare-const null-var2128 var2128)
(declare-const null-String String)
(declare-const null-var835 var835)
(declare-const var3305-$assertionsDisabled Bool)
(declare-const var1202 var2128) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element 
(assert (not (= var1202 null-var2128)))
(declare-const var2633 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2633 null-String)))
(declare-const var3580 var835) ; Statement: r7 := @parameter2: jdk.nashorn.internal.runtime.Property 
(assert (not (= var3580 null-var835)))
(define-const var1982 Bool var3305-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(assert (not (= (ite var1982 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1056 Int (hashCode/-467973558 var2633)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(assert true)
(define-const var1280 Bool (match/1257379692 var1202 var2633 var1056)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: boolean match(java.lang.String,int)>(r0, $i0) 
 ; Statement: if $z1 == 0 goto $r2 = new jdk.nashorn.internal.runtime.PropertyHashMap$Element 
(assert (not (= (ite var1280 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3048 var2128 var2128-init) ; Statement: $r9 = new jdk.nashorn.internal.runtime.PropertyHashMap$Element 
(assert true)
(define-const var1508 var2128 (getLink/-2002102137 var1202)) ; Statement: $r10 = virtualinvoke r1.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.PropertyHashMap$Element getLink()>() 
(assert true)
;(assert (<init>/-159110067 var3048 var1508 var3580)) ; Statement: specialinvoke $r9.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: void <init>(jdk.nashorn.internal.runtime.PropertyHashMap$Element,jdk.nashorn.internal.runtime.Property)>($r10, r7) 

(declare-const var3048!1 var2128)
(declare-const var1508!1 var2128)
(declare-const var3580!1 var835)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), match/1257379692=([jdk.nashorn.internal.runtime.PropertyHashMap$Element, java.lang.String, int], boolean), var2128-init=([], jdk.nashorn.internal.runtime.PropertyHashMap$Element), getLink/-2002102137=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], jdk.nashorn.internal.runtime.PropertyHashMap$Element), <init>/-159110067=([jdk.nashorn.internal.runtime.PropertyHashMap$Element, jdk.nashorn.internal.runtime.PropertyHashMap$Element, jdk.nashorn.internal.runtime.Property], void)}
; {var2128=jdk.nashorn.internal.runtime.PropertyHashMap$Element, var1202=r1, var2633=r0, var2908=null_type, var835=jdk.nashorn.internal.runtime.Property, var3580=r7, var3305=jdk.nashorn.internal.runtime.PropertyHashMap, var1982=$z0, var1056=$i0, var1280=$z1, var3048=$r9, var1508=$r10}
; {jdk.nashorn.internal.runtime.PropertyHashMap$Element=var2128, r1=var1202, r0=var2633, null_type=var2908, jdk.nashorn.internal.runtime.Property=var835, r7=var3580, jdk.nashorn.internal.runtime.PropertyHashMap=var3305, $z0=var1982, $i0=var1056, $z1=var1280, $r9=var3048, $r10=var1508}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element;	r0 := @parameter1: java.lang.String;	r7 := @parameter2: jdk.nashorn.internal.runtime.Property;	$z0 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled>;	if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: boolean match(java.lang.String,int)>(r0, $i0);	if $z1 == 0 goto $r2 = new jdk.nashorn.internal.runtime.PropertyHashMap$Element;	$r9 = new jdk.nashorn.internal.runtime.PropertyHashMap$Element;	$r10 = virtualinvoke r1.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.PropertyHashMap$Element getLink()>();	specialinvoke $r9.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: void <init>(jdk.nashorn.internal.runtime.PropertyHashMap$Element,jdk.nashorn.internal.runtime.Property)>($r10, r7);	return $r9
;block_num 3