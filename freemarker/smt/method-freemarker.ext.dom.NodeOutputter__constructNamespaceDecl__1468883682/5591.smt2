(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3486 0)
(declare-sort var3287 0)
(declare-sort var2909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun explicitDefaultNSPrefix/-673924355 (var3486) Bool)
(declare-fun namespacesToPrefixLookup/-673924355 (var3486) var3287)
(declare-fun keySet/-2041715811 (var3287) var2909)
(declare-fun var2909_iterator/1911472585 (var2909) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun namespaceDecl/-673924355 (var3486) String)
(declare-const null-var3486 var3486)
(declare-const var904 var3486) ; Statement: r1 := @this: freemarker.ext.dom.NodeOutputter 
(assert (not (= var904 null-var3486)))
(define-const var182 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var182)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var182!1 String)
(assert (= var182!1 ""))
(define-const var2245 Bool (explicitDefaultNSPrefix/-673924355 var904)) ; Statement: $z0 = r1.<freemarker.ext.dom.NodeOutputter: boolean explicitDefaultNSPrefix> 
 ; Statement: if $z0 == 0 goto $r2 = r1.<freemarker.ext.dom.NodeOutputter: java.util.LinkedHashMap namespacesToPrefixLookup> 
(assert (= (ite var2245 1 0) 0)) ; Cond: $z0 == 0 
(define-const var93 var3287 (namespacesToPrefixLookup/-673924355 var904)) ; Statement: $r2 = r1.<freemarker.ext.dom.NodeOutputter: java.util.LinkedHashMap namespacesToPrefixLookup> 
(assert true)
(define-const var1344 var2909 (keySet/-2041715811 var93)) ; Statement: $r3 = virtualinvoke $r2.<java.util.LinkedHashMap: java.util.Set keySet()>() 
(define-const var618 Iterator (var2909_iterator/1911472585 var1344)) ; Statement: $r16 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3777 Bool (Iterator_hasNext/-1669924200 var618)) ; Statement: $z1 = interfaceinvoke $r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3777 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var424 String (toString/-2075883882 var182!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var904!1 var3486)
(assert (not (= var904!1 null-var3486)))
(assert (= (namespaceDecl/-673924355 var904!1) var424)) ; Statement: r1.<freemarker.ext.dom.NodeOutputter: java.lang.String namespaceDecl> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), explicitDefaultNSPrefix/-673924355=([freemarker.ext.dom.NodeOutputter], boolean), namespacesToPrefixLookup/-673924355=([freemarker.ext.dom.NodeOutputter], java.util.LinkedHashMap), keySet/-2041715811=([java.util.LinkedHashMap], java.util.Set), var2909_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), namespaceDecl/-673924355=([freemarker.ext.dom.NodeOutputter], java.lang.String)}
; {var3486=freemarker.ext.dom.NodeOutputter, var904=r1, var182=$r0, var2245=$z0, var3287=java.util.LinkedHashMap, var93=$r2, var2909=java.util.Set, var1344=$r3, var618=$r16, var3777=$z1, var424=$r4}
; {freemarker.ext.dom.NodeOutputter=var3486, r1=var904, $r0=var182, $z0=var2245, java.util.LinkedHashMap=var3287, $r2=var93, java.util.Set=var2909, $r3=var1344, $r16=var618, $z1=var3777, $r4=var424}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.dom.NodeOutputter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = r1.<freemarker.ext.dom.NodeOutputter: boolean explicitDefaultNSPrefix>;	if $z0 == 0 goto $r2 = r1.<freemarker.ext.dom.NodeOutputter: java.util.LinkedHashMap namespacesToPrefixLookup>;	$r2 = r1.<freemarker.ext.dom.NodeOutputter: java.util.LinkedHashMap namespacesToPrefixLookup>;	$r3 = virtualinvoke $r2.<java.util.LinkedHashMap: java.util.Set keySet()>();	$r16 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r16.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<freemarker.ext.dom.NodeOutputter: java.lang.String namespaceDecl> = $r4;	return
;block_num 4