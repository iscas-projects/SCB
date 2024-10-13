(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3135 0)
(declare-sort var85 0)
(declare-sort var3882 0)
(declare-sort var1101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3882) ClassObject)
(declare-fun cast-from-var3135-to-var3882 (var3135) var3882)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var85_iterator/-1617794947 (var85) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1101-init () var1101)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1387902529 (var1101 String Int) void)
(declare-fun longValue/327287250 (var1101) Int)
(declare-const null-var3135 var3135)
(declare-const null-var85 var85)
(declare-const var1840 var3135) ; Statement: r0 := @this: cn.hutool.core.text.Simhash 
(assert (not (= var1840 null-var3135)))
(declare-const var1690 var85) ; Statement: r2 := @parameter0: java.util.Collection 
(assert (not (= var1690 null-var85)))
(assert true)
;(assert (getClass/1258963082 (cast-from-var3135-to-var3882 var1840))) ; Statement: virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var1840!1 var3135)
(define-const var2462 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[64] 
(define-const var769 Iterator (var85_iterator/-1617794947 var1690)) ; Statement: r7 = interfaceinvoke r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2953 Bool (Iterator_hasNext/-1669924200 var769)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var2953 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3288 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3288)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3288!1 String)
(assert (= var3288!1 ""))
(define-const var1138 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
 ; Statement: if i11 >= 64 goto $r4 = new java.math.BigInteger 
(assert (>= var1138 64)) ; Cond: i11 >= 64 
(define-const var2444 var1101 var1101-init) ; Statement: $r4 = new java.math.BigInteger 
(assert true)
(define-const var3607 String (toString/-2075883882 var3288!1)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1387902529 var2444 var3607 2)) ; Statement: specialinvoke $r4.<java.math.BigInteger: void <init>(java.lang.String,int)>($r5, 2) 

(declare-const var2444!1 var1101)
(declare-const var3607!1 String)
(declare-const var1799 Int)
(assert true)
(define-const var1097 Int (longValue/327287250 var2444!1)) ; Statement: $l0 = virtualinvoke $r4.<java.math.BigInteger: long longValue()>() 
 ; Statement: return $l0 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3135-to-var3882=([cn.hutool.core.text.Simhash], java.lang.Object), arr-Int-init=([], int[]), var85_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1101-init=([], java.math.BigInteger), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1387902529=([java.math.BigInteger, java.lang.String, int], void), longValue/327287250=([java.math.BigInteger], long)}
; {var3135=cn.hutool.core.text.Simhash, var1840=r0, var85=java.util.Collection, var1690=r2, var3882=java.lang.Object, var2462=r1, var769=r7, var2953=$z0, var3288=$r3, var1138=i11, var1101=java.math.BigInteger, var2444=$r4, var3607=$r5, var1799=2, var1097=$l0}
; {cn.hutool.core.text.Simhash=var3135, r0=var1840, java.util.Collection=var85, r2=var1690, java.lang.Object=var3882, r1=var2462, r7=var769, $z0=var2953, $r3=var3288, i11=var1138, java.math.BigInteger=var1101, $r4=var2444, $r5=var3607, 2=var1799, $l0=var1097}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.text.Simhash;	r2 := @parameter0: java.util.Collection;	virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r1 = newarray (int)[64];	r7 = interfaceinvoke r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	i11 = 0;	if i11 >= 64 goto $r4 = new java.math.BigInteger;	$r4 = new java.math.BigInteger;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.math.BigInteger: void <init>(java.lang.String,int)>($r5, 2);	$l0 = virtualinvoke $r4.<java.math.BigInteger: long longValue()>();	return $l0
;block_num 5