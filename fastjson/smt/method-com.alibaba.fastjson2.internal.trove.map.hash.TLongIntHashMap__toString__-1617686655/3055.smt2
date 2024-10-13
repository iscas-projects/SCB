(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var41 0)
(declare-sort var1429 0)
(declare-sort var137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1429-init () var1429)
(declare-fun <init>/37711966 (var1429 var41 String) void)
(declare-fun forEachEntry/-1263745587 (var41 var137) Bool)
(declare-fun cast-from-var1429-to-var137 (var1429) var137)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var41 var41)
(declare-const var1123 var41) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap 
(assert (not (= var1123 null-var41)))
(define-const var2977 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2977 "{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{") 
(declare-const var2977!1 String)
(assert (= var2977!1 "{"))
(define-const var546 var1429 var1429-init) ; Statement: $r2 = new com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1 
(assert true)
;(assert (<init>/37711966 var546 var1123 var2977!1)) ; Statement: specialinvoke $r2.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: void <init>(com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap,java.lang.StringBuilder)>(r1, $r0) 

(declare-const var546!1 var1429)
(declare-const var1123!1 var41)
(declare-const var2977!2 String)
(assert true)
;(assert (forEachEntry/-1263745587 var1123!1 (cast-from-var1429-to-var137 var546!1))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap: boolean forEachEntry(java.util.function.BiFunction)>($r2) 

(declare-const var1123!2 var41)
(declare-const var546!2 var1429)
(assert true)
;(assert (append/672562846 var2977!2 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2977!3 String)
(assert (= var2977!3 (str.++ var2977!2 "}")))
(assert true)
(define-const var341 String (toString/-2075883882 var2977!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1429-init=([], com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1), <init>/37711966=([com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1, com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap, java.lang.StringBuilder], void), forEachEntry/-1263745587=([com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap, java.util.function.BiFunction], boolean), cast-from-var1429-to-var137=([com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1], java.util.function.BiFunction), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var41=com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap, var1123=r1, var2977=$r0, var1429=com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1, var546=$r2, var137=java.util.function.BiFunction, var341=$r3}
; {com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap=var41, r1=var1123, $r0=var2977, com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1=var1429, $r2=var546, java.util.function.BiFunction=var137, $r3=var341}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{");	$r2 = new com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1;	specialinvoke $r2.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: void <init>(com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap,java.lang.StringBuilder)>(r1, $r0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap: boolean forEachEntry(java.util.function.BiFunction)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1