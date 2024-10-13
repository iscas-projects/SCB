(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2570 0)
(declare-sort var1265 0)
(declare-sort var2946 0)
(declare-sort var3299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun item/1448446041 (var2946) var1265)
(declare-fun cast-from-var2570-to-var2946 (var2570) var2946)
(declare-fun cast-from-var1265-to-__Array__Int__var3299__ (var1265) (Array Int var3299))
(declare-fun getLength-Arr-var3299-1 ((Array Int var3299)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2570 var2570)
(declare-const var2997 var2570) ; Statement: r1 := @this: org.apache.lucene.index.DocumentsWriterDeleteQueue$DocValuesUpdatesNode 
(assert (not (= var2997 null-var2570)))
(define-const var521 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var521)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var521!1 String)
(assert (= var521!1 ""))
(assert true)
;(assert (append/672562846 var521!1 "docValuesUpdates: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("docValuesUpdates: ") 
(declare-const var521!2 String)
(assert (= var521!2 (str.++ var521!1 "docValuesUpdates: ")))
(define-const var198 var1265 (item/1448446041 (cast-from-var2570-to-var2946 var2997))) ; Statement: $r2 = r1.<org.apache.lucene.index.DocumentsWriterDeleteQueue$DocValuesUpdatesNode: java.lang.Object item> 
(define-const var2619 (Array Int var3299) (cast-from-var1265-to-__Array__Int__var3299__ var198)) ; Statement: $r3 = (org.apache.lucene.index.DocValuesUpdate[]) $r2 
(define-const var1825 Int (getLength-Arr-var3299-1 var2619)) ; Statement: $i0 = lengthof $r3 
 ; Statement: if $i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var1825 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var2038 String (toString/-2075883882 var521!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), item/1448446041=([org.apache.lucene.index.DocumentsWriterDeleteQueue$Node], java.lang.Object), cast-from-var2570-to-var2946=([org.apache.lucene.index.DocumentsWriterDeleteQueue$DocValuesUpdatesNode], org.apache.lucene.index.DocumentsWriterDeleteQueue$Node), cast-from-var1265-to-__Array__Int__var3299__=([java.lang.Object], org.apache.lucene.index.DocValuesUpdate[]), getLength-Arr-var3299-1=([org.apache.lucene.index.DocValuesUpdate[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2570=org.apache.lucene.index.DocumentsWriterDeleteQueue$DocValuesUpdatesNode, var2997=r1, var521=$r0, var1265=java.lang.Object, var2946=org.apache.lucene.index.DocumentsWriterDeleteQueue$Node, var198=$r2, var3299=org.apache.lucene.index.DocValuesUpdate, var2619=$r3, var1825=$i0, var2038=$r4}
; {org.apache.lucene.index.DocumentsWriterDeleteQueue$DocValuesUpdatesNode=var2570, r1=var2997, $r0=var521, java.lang.Object=var1265, org.apache.lucene.index.DocumentsWriterDeleteQueue$Node=var2946, $r2=var198, org.apache.lucene.index.DocValuesUpdate=var3299, $r3=var2619, $i0=var1825, $r4=var2038}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.DocumentsWriterDeleteQueue$DocValuesUpdatesNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("docValuesUpdates: ");	$r2 = r1.<org.apache.lucene.index.DocumentsWriterDeleteQueue$DocValuesUpdatesNode: java.lang.Object item>;	$r3 = (org.apache.lucene.index.DocValuesUpdate[]) $r2;	$i0 = lengthof $r3;	if $i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2