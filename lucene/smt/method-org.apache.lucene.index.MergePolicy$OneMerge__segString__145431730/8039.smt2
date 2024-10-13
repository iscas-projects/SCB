(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort var1052 0)
(declare-sort var536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun segments/1533920030 (var1841) var1052)
(declare-fun var1052_size/-959786421 (var1052) Int)
(declare-fun info/1533920030 (var1841) var536)
(declare-fun maxNumSegments/1533920030 (var1841) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isAborted/-1604090640 (var1841) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1841 var1841)
(declare-const null-var536 var536)
(declare-const var1270 var1841) ; Statement: r1 := @this: org.apache.lucene.index.MergePolicy$OneMerge 
(assert (not (= var1270 null-var1841)))
(define-const var1517 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1517)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1517!1 String)
(assert (= var1517!1 ""))
(define-const var2284 var1052 (segments/1533920030 var1270)) ; Statement: $r2 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: java.util.List segments> 
(define-const var2979 Int (var1052_size/-959786421 var2284)) ; Statement: i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(define-const var2324 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r3 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: org.apache.lucene.index.SegmentCommitInfo info> 
(assert (>= var2324 var2979)) ; Cond: i3 >= i0 
(define-const var1211 var536 (info/1533920030 var1270)) ; Statement: $r3 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: org.apache.lucene.index.SegmentCommitInfo info> 
 ; Statement: if $r3 == null goto $i1 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: int maxNumSegments> 
(assert (= var1211 null-var536)) ; Cond: $r3 == null 
(define-const var3200 Int (maxNumSegments/1533920030 var1270)) ; Statement: $i1 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: int maxNumSegments> 
(define-const var2707 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i1 == $i5 goto $z0 = virtualinvoke r1.<org.apache.lucene.index.MergePolicy$OneMerge: boolean isAborted()>() 
(assert (= var3200 var2707)) ; Cond: $i1 == $i5 
(assert true)
(define-const var1086 Bool (isAborted/-1604090640 var1270)) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.index.MergePolicy$OneMerge: boolean isAborted()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1086 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2478 String (toString/-2075883882 var1517!1)) ; Statement: $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), segments/1533920030=([org.apache.lucene.index.MergePolicy$OneMerge], java.util.List), var1052_size/-959786421=([java.util.List], int), info/1533920030=([org.apache.lucene.index.MergePolicy$OneMerge], org.apache.lucene.index.SegmentCommitInfo), maxNumSegments/1533920030=([org.apache.lucene.index.MergePolicy$OneMerge], int), cast-from-Int-to-Int=([int], int), isAborted/-1604090640=([org.apache.lucene.index.MergePolicy$OneMerge], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1841=org.apache.lucene.index.MergePolicy$OneMerge, var1270=r1, var1517=$r15, var1052=java.util.List, var2284=$r2, var2979=i0, var2324=i3, var536=org.apache.lucene.index.SegmentCommitInfo, var1211=$r3, var3200=$i1, var2707=$i5, var1086=$z0, var2478=$r4}
; {org.apache.lucene.index.MergePolicy$OneMerge=var1841, r1=var1270, $r15=var1517, java.util.List=var1052, $r2=var2284, i0=var2979, i3=var2324, org.apache.lucene.index.SegmentCommitInfo=var536, $r3=var1211, $i1=var3200, $i5=var2707, $z0=var1086, $r4=var2478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.MergePolicy$OneMerge;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: java.util.List segments>;	i0 = interfaceinvoke $r2.<java.util.List: int size()>();	i3 = 0;	if i3 >= i0 goto $r3 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: org.apache.lucene.index.SegmentCommitInfo info>;	$r3 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: org.apache.lucene.index.SegmentCommitInfo info>;	if $r3 == null goto $i1 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: int maxNumSegments>;	$i1 = r1.<org.apache.lucene.index.MergePolicy$OneMerge: int maxNumSegments>;	$i5 = (int) -1;	if $i1 == $i5 goto $z0 = virtualinvoke r1.<org.apache.lucene.index.MergePolicy$OneMerge: boolean isAborted()>();	$z0 = virtualinvoke r1.<org.apache.lucene.index.MergePolicy$OneMerge: boolean isAborted()>();	if $z0 == 0 goto $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 6