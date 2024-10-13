(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1914 0)
(declare-sort var2123 0)
(declare-sort var633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun keySet/-1629403916 (var633) var2123)
(declare-fun cast-from-var1914-to-var633 (var1914) var633)
(declare-fun var2123_iterator/1911472585 (var2123) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1914 var1914)
(declare-const var2179 var1914) ; Statement: r1 := @this: com.mysql.cj.xdevapi.DbDocImpl 
(assert (not (= var2179 null-var1914)))
(define-const var1907 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1907 "{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{") 
(declare-const var1907!1 String)
(assert (= var1907!1 "{"))
(assert true)
(define-const var1898 var2123 (keySet/-1629403916 (cast-from-var1914-to-var633 var2179))) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: java.util.Set keySet()>() 
(define-const var1757 Iterator (var2123_iterator/1911472585 var1898)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3748 Bool (Iterator_hasNext/-1669924200 var1757)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= (ite var3748 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1907!1 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1907!2 String)
(assert (= var1907!2 (str.++ var1907!1 "}")))
(assert true)
(define-const var2669 String (toString/-2075883882 var1907!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), keySet/-1629403916=([java.util.TreeMap], java.util.Set), cast-from-var1914-to-var633=([com.mysql.cj.xdevapi.DbDocImpl], java.util.TreeMap), var2123_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1914=com.mysql.cj.xdevapi.DbDocImpl, var2179=r1, var1907=$r0, var2123=java.util.Set, var633=java.util.TreeMap, var1898=$r2, var1757=r3, var3748=$z0, var2669=$r4}
; {com.mysql.cj.xdevapi.DbDocImpl=var1914, r1=var2179, $r0=var1907, java.util.Set=var2123, java.util.TreeMap=var633, $r2=var1898, r3=var1757, $z0=var3748, $r4=var2669}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.xdevapi.DbDocImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{");	$r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.DbDocImpl: java.util.Set keySet()>();	r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3