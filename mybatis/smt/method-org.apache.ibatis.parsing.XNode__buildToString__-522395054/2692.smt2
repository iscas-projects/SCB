(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3609 0)
(declare-sort var3949 0)
(declare-sort var25 0)
(declare-sort var943 0)
(declare-sort var3363 0)
(declare-sort var1851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indent/295300128 (var3609 String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1763767194 (var3609) String)
(declare-fun attributes/1763767194 (var3609) var3949)
(declare-fun entrySet/1893307237 (var943) var25)
(declare-fun cast-from-var3949-to-var943 (var3949) var943)
(declare-fun var25_iterator/1911472585 (var25) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun node/1763767194 (var3609) var3363)
(declare-fun var3363_getChildNodes/-162022572 (var3363) var1851)
(declare-const null-var3609 var3609)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1851 var1851)
(declare-const var3011 var3609) ; Statement: r0 := @this: org.apache.ibatis.parsing.XNode 
(assert (not (= var3011 null-var3609)))
(declare-const var3401 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3401 null-String)))
(declare-const var1587 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1587 null-Int)))
(assert true)
(define-const var3859 String (indent/295300128 var3011 var3401 var1587)) ; Statement: $r2 = specialinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.StringBuilder indent(java.lang.StringBuilder,int)>(r1, i0) 
(assert true)
(define-const var27 String (append/672562846 var3859 "<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var3859!1 String)
(assert (= var3859!1 (str.++ var3859 "<")))
(define-const var2656 String (name/1763767194 var3011)) ; Statement: $r3 = r0.<org.apache.ibatis.parsing.XNode: java.lang.String name> 
(assert true)
;(assert (append/672562846 var27 var2656)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var27!1 String)
(assert (= var27!1 (str.++ var27 var2656)))
(define-const var3990 var3949 (attributes/1763767194 var3011)) ; Statement: $r5 = r0.<org.apache.ibatis.parsing.XNode: java.util.Properties attributes> 
(assert true)
(define-const var1331 var25 (entrySet/1893307237 (cast-from-var3949-to-var943 var3990))) ; Statement: $r6 = virtualinvoke $r5.<java.util.Properties: java.util.Set entrySet()>() 
(define-const var2453 Iterator (var25_iterator/1911472585 var1331)) ; Statement: r23 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3016 Bool (Iterator_hasNext/-1669924200 var2453)) ; Statement: $z0 = interfaceinvoke r23.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.parsing.XNode: org.w3c.dom.Node node> 
(assert (= (ite var3016 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2367 var3363 (node/1763767194 var3011)) ; Statement: $r7 = r0.<org.apache.ibatis.parsing.XNode: org.w3c.dom.Node node> 
(define-const var3573 var1851 (var3363_getChildNodes/-162022572 var2367)) ; Statement: r25 = interfaceinvoke $r7.<org.w3c.dom.Node: org.w3c.dom.NodeList getChildNodes()>() 
 ; Statement: if r25 == null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" />\n") 
(assert (= var3573 null-var1851)) ; Cond: r25 == null 
(assert true)
;(assert (append/672562846 var3401 " />\n")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" />\n") 
(declare-const var3401!1 String)
(assert (= var3401!1 (str.++ var3401 " />\n")))
 ; Statement: goto [?= return r1] 
(assert true) ; Non Conditional
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indent/295300128=([org.apache.ibatis.parsing.XNode, java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1763767194=([org.apache.ibatis.parsing.XNode], java.lang.String), attributes/1763767194=([org.apache.ibatis.parsing.XNode], java.util.Properties), entrySet/1893307237=([java.util.Hashtable], java.util.Set), cast-from-var3949-to-var943=([java.util.Properties], java.util.Hashtable), var25_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), node/1763767194=([org.apache.ibatis.parsing.XNode], org.w3c.dom.Node), var3363_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList)}
; {var3609=org.apache.ibatis.parsing.XNode, var3011=r0, var3401=r1, var1587=i0, var3859=$r2, var27=$r4, var2656=$r3, var3949=java.util.Properties, var3990=$r5, var25=java.util.Set, var943=java.util.Hashtable, var1331=$r6, var2453=r23, var3016=$z0, var3363=org.w3c.dom.Node, var2367=$r7, var1851=org.w3c.dom.NodeList, var3573=r25}
; {org.apache.ibatis.parsing.XNode=var3609, r0=var3011, r1=var3401, i0=var1587, $r2=var3859, $r4=var27, $r3=var2656, java.util.Properties=var3949, $r5=var3990, java.util.Set=var25, java.util.Hashtable=var943, $r6=var1331, r23=var2453, $z0=var3016, org.w3c.dom.Node=var3363, $r7=var2367, org.w3c.dom.NodeList=var1851, r25=var3573}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @this: org.apache.ibatis.parsing.XNode;	r1 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$r2 = specialinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.StringBuilder indent(java.lang.StringBuilder,int)>(r1, i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = r0.<org.apache.ibatis.parsing.XNode: java.lang.String name>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = r0.<org.apache.ibatis.parsing.XNode: java.util.Properties attributes>;	$r6 = virtualinvoke $r5.<java.util.Properties: java.util.Set entrySet()>();	r23 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r23.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.parsing.XNode: org.w3c.dom.Node node>;	$r7 = r0.<org.apache.ibatis.parsing.XNode: org.w3c.dom.Node node>;	r25 = interfaceinvoke $r7.<org.w3c.dom.Node: org.w3c.dom.NodeList getChildNodes()>();	if r25 == null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" />\n");	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" />\n");	goto [?= return r1];	return r1
;block_num 5