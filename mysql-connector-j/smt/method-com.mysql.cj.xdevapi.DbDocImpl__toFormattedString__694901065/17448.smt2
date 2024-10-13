(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3331 0)
(declare-sort var3261 0)
(declare-sort var2751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun keySet/-1629403916 (var2751) var3261)
(declare-fun cast-from-var3331-to-var2751 (var3331) var2751)
(declare-fun var3261_iterator/1911472585 (var3261) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun size/1324805763 (var2751) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3331 var3331)
(declare-const var1336 var3331) ; Statement: r1 := @this: com.mysql.cj.xdevapi.DbDocImpl 
(assert (not (= var1336 null-var3331)))
(define-const var754 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var754 "{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{") 
(declare-const var754!1 String)
(assert (= var754!1 "{"))
(assert true)
(define-const var3169 var3261 (keySet/-1629403916 (cast-from-var3331-to-var2751 var1336))) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: java.util.Set keySet()>() 
(define-const var1795 Iterator (var3261_iterator/1911472585 var3169)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2175 Bool (Iterator_hasNext/-1669924200 var1795)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: int size()>() 
(assert (= (ite var2175 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2112 Int (size/1324805763 (cast-from-var3331-to-var2751 var1336))) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: int size()>() 
 ; Statement: if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (<= var2112 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (append/672562846 var754!1 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var754!2 String)
(assert (= var754!2 (str.++ var754!1 "}")))
(assert true)
(define-const var1173 String (toString/-2075883882 var754!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), keySet/-1629403916=([java.util.TreeMap], java.util.Set), cast-from-var3331-to-var2751=([com.mysql.cj.xdevapi.DbDocImpl], java.util.TreeMap), var3261_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), size/1324805763=([java.util.TreeMap], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3331=com.mysql.cj.xdevapi.DbDocImpl, var1336=r1, var754=$r0, var3261=java.util.Set, var2751=java.util.TreeMap, var3169=$r2, var1795=r3, var2175=$z0, var2112=$i0, var1173=$r4}
; {com.mysql.cj.xdevapi.DbDocImpl=var3331, r1=var1336, $r0=var754, java.util.Set=var3261, java.util.TreeMap=var2751, $r2=var3169, r3=var1795, $z0=var2175, $i0=var2112, $r4=var1173}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.xdevapi.DbDocImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{");	$r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: java.util.Set keySet()>();	r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: int size()>();	$i0 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: int size()>();	if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4