(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2619 0)
(declare-sort var71 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1386) void)
(declare-fun cast-from-var2619-to-var1386 (var2619) var1386)
(declare-fun link/1550382194 (var2619) var2619)
(declare-fun property/1550382194 (var2619) var71)
(declare-fun getKey/-1967431913 (var71) String)
(declare-fun key/1550382194 (var2619) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/1550382194 (var2619) Int)
(declare-const null-var2619 var2619)
(declare-const null-var71 var71)
(declare-const var1892 var2619) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.PropertyHashMap$Element 
(assert (not (= var1892 null-var2619)))
(declare-const var2068 var2619) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element 
(assert (not (= var2068 null-var2619)))
(declare-const var2334 var71) ; Statement: r2 := @parameter1: jdk.nashorn.internal.runtime.Property 
(assert (not (= var2334 null-var71)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2619-to-var1386 var1892))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1892!1 var2619)
(declare-const var1892!2 var2619)
(assert (not (= var1892!2 null-var2619)))
(assert (= (link/1550382194 var1892!2) var2068)) ; Statement: r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.PropertyHashMap$Element link> = r1 
(declare-const var1892!3 var2619)
(assert (not (= var1892!3 null-var2619)))
(assert (= (property/1550382194 var1892!3) var2334)) ; Statement: r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.Property property> = r2 
(assert true)
(define-const var1347 String (getKey/-1967431913 var2334)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(declare-const var1892!4 var2619)
(assert (not (= var1892!4 null-var2619)))
(assert (= (key/1550382194 var1892!4) var1347)) ; Statement: r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: java.lang.String key> = $r3 
(define-const var2205 String (key/1550382194 var1892!4)) ; Statement: $r4 = r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: java.lang.String key> 
(assert true)
(define-const var3142 Int (hashCode/-467973558 var2205)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(declare-const var1892!5 var2619)
(assert (not (= var1892!5 null-var2619)))
(assert (= (hashCode/1550382194 var1892!5) var3142)) ; Statement: r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: int hashCode> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2619-to-var1386=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], java.lang.Object), link/1550382194=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], jdk.nashorn.internal.runtime.PropertyHashMap$Element), property/1550382194=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], jdk.nashorn.internal.runtime.Property), getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), key/1550382194=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/1550382194=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], int)}
; {var2619=jdk.nashorn.internal.runtime.PropertyHashMap$Element, var1892=r0, var2068=r1, var71=jdk.nashorn.internal.runtime.Property, var2334=r2, var1386=java.lang.Object, var1347=$r3, var2205=$r4, var3142=$i0}
; {jdk.nashorn.internal.runtime.PropertyHashMap$Element=var2619, r0=var1892, r1=var2068, jdk.nashorn.internal.runtime.Property=var71, r2=var2334, java.lang.Object=var1386, $r3=var1347, $r4=var2205, $i0=var3142}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.PropertyHashMap$Element;	r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element;	r2 := @parameter1: jdk.nashorn.internal.runtime.Property;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.PropertyHashMap$Element link> = r1;	r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.Property property> = r2;	$r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: java.lang.String key> = $r3;	$r4 = r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: java.lang.String key>;	$i0 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	r0.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: int hashCode> = $i0;	return
;block_num 1