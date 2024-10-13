(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSegmentsFileName/62449429 (var2785) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun size/-174416475 (var2785) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2785 var2785)
(declare-const var1839 var2785) ; Statement: r1 := @this: org.apache.lucene.index.SegmentInfos 
(assert (not (= var1839 null-var2785)))
(define-const var2213 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2213)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2213!1 String)
(assert (= var2213!1 ""))
(assert true)
(define-const var3238 String (getSegmentsFileName/62449429 var1839)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfos: java.lang.String getSegmentsFileName()>() 
(assert true)
(define-const var2341 String (append/672562846 var2213!1 var3238)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2213!2 String)
(assert (= var2213!2 (str.++ var2213!1 var3238)))
(assert true)
;(assert (append/672562846 var2341 ": ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2341!1 String)
(assert (= var2341!1 (str.++ var2341 ": ")))
(assert true)
(define-const var374 Int (size/-174416475 var1839)) ; Statement: i0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfos: int size()>() 
(define-const var1485 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1485 var374)) ; Cond: i1 >= i0 
(assert true)
(define-const var2866 String (toString/-2075883882 var2213!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSegmentsFileName/62449429=([org.apache.lucene.index.SegmentInfos], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), size/-174416475=([org.apache.lucene.index.SegmentInfos], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2785=org.apache.lucene.index.SegmentInfos, var1839=r1, var2213=$r0, var3238=$r2, var2341=$r3, var374=i0, var1485=i1, var2866=$r4}
; {org.apache.lucene.index.SegmentInfos=var2785, r1=var1839, $r0=var2213, $r2=var3238, $r3=var2341, i0=var374, i1=var1485, $r4=var2866}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.SegmentInfos;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfos: java.lang.String getSegmentsFileName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	i0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfos: int size()>();	i1 = 0;	if i1 >= i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3