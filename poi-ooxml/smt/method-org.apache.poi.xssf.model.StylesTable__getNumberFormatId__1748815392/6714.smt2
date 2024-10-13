(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2359 0)
(declare-sort var1873 0)
(declare-sort var3541 0)
(declare-sort var3150 0)
(declare-sort var1940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun numberFormats/-259146367 (var2359) var3541)
(declare-fun var3541_entrySet/-2135847386 (var3541) var3150)
(declare-fun var3150_iterator/1911472585 (var3150) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1940-init () var1940)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1940 String) void)
(declare-const null-var2359 var2359)
(declare-const null-String String)
(declare-const var3606 var2359) ; Statement: r0 := @this: org.apache.poi.xssf.model.StylesTable 
(assert (not (= var3606 null-var2359)))
(declare-const var3732 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3732 null-String)))
(define-const var1274 var3541 (numberFormats/-259146367 var3606)) ; Statement: $r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.SortedMap numberFormats> 
(define-const var2033 var3150 (var3541_entrySet/-2135847386 var1274)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.SortedMap: java.util.Set entrySet()>() 
(define-const var3371 Iterator (var3150_iterator/1911472585 var2033)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3442 Bool (Iterator_hasNext/-1669924200 var3371)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.IllegalStateException 
(assert (= (ite var3442 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1260 var1940 var1940-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var3118 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3118)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3118!1 String)
(assert (= var3118!1 ""))
(assert true)
(define-const var3357 String (append/672562846 var3118!1 "Number format not in style table: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number format not in style table: ") 
(declare-const var3118!2 String)
(assert (= var3118!2 (str.++ var3118!1 "Number format not in style table: ")))
(assert true)
(define-const var3236 String (append/672562846 var3357 var3732)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3357!1 String)
(assert (= var3357!1 (str.++ var3357 var3732)))
(assert true)
(define-const var1802 String (toString/-2075883882 var3236)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1260 var1802)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var1260!1 var1940)
(declare-const var1802!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {numberFormats/-259146367=([org.apache.poi.xssf.model.StylesTable], java.util.SortedMap), var3541_entrySet/-2135847386=([java.util.SortedMap], java.util.Set), var3150_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1940-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2359=org.apache.poi.xssf.model.StylesTable, var3606=r0, var3732=r6, var1873=null_type, var3541=java.util.SortedMap, var1274=$r1, var3150=java.util.Set, var2033=$r2, var3371=r3, var3442=$z0, var1940=java.lang.IllegalStateException, var1260=$r4, var3118=$r5, var3357=$r7, var3236=$r8, var1802=$r9}
; {org.apache.poi.xssf.model.StylesTable=var2359, r0=var3606, r6=var3732, null_type=var1873, java.util.SortedMap=var3541, $r1=var1274, java.util.Set=var3150, $r2=var2033, r3=var3371, $z0=var3442, java.lang.IllegalStateException=var1940, $r4=var1260, $r5=var3118, $r7=var3357, $r8=var3236, $r9=var1802}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.model.StylesTable;	r6 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.SortedMap numberFormats>;	$r2 = interfaceinvoke $r1.<java.util.SortedMap: java.util.Set entrySet()>();	r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new java.lang.IllegalStateException;	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number format not in style table: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 3