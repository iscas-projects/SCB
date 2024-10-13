(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var881 0)
(declare-sort var3716 0)
(declare-sort var2514 0)
(declare-sort var3103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun info/436966822 (var2514) var3103)
(declare-fun name/1990760591 (var3103) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-fun maxSegmentName/421352666 (var3716) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var881 var881)
(declare-const null-var3716 var3716)
(declare-const null-var2514 var2514)
(declare-const var3491 var881) ; Statement: r5 := @this: org.apache.lucene.index.CheckIndex 
(assert (not (= var3491 null-var881)))
(declare-const var3423 var3716) ; Statement: r4 := @parameter0: org.apache.lucene.index.CheckIndex$Status 
(assert (not (= var3423 null-var3716)))
(declare-const var2758 var2514) ; Statement: r0 := @parameter1: org.apache.lucene.index.SegmentCommitInfo 
(assert (not (= var2758 null-var2514)))
(define-const var1843 var3103 (info/436966822 var2758)) ; Statement: $r1 = r0.<org.apache.lucene.index.SegmentCommitInfo: org.apache.lucene.index.SegmentInfo info> 
(define-const var90 String (name/1990760591 var1843)) ; Statement: $r2 = $r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name> 
(assert (not (and true (and (>= 1 0) (>= (str.len var90) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {info/436966822=([org.apache.lucene.index.SegmentCommitInfo], org.apache.lucene.index.SegmentInfo), name/1990760591=([org.apache.lucene.index.SegmentInfo], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), Int_parseLong/758265864=([java.lang.String, int], long), maxSegmentName/421352666=([org.apache.lucene.index.CheckIndex$Status], long), cast-from-Int-to-Int=([byte], int)}
; {var881=org.apache.lucene.index.CheckIndex, var3491=r5, var3716=org.apache.lucene.index.CheckIndex$Status, var3423=r4, var2514=org.apache.lucene.index.SegmentCommitInfo, var2758=r0, var3103=org.apache.lucene.index.SegmentInfo, var1843=$r1, var90=$r2, var688=$r3, var1391=l0, var2722=$l1, var3050=$b2, var1986=$i3}
; {org.apache.lucene.index.CheckIndex=var881, r5=var3491, org.apache.lucene.index.CheckIndex$Status=var3716, r4=var3423, org.apache.lucene.index.SegmentCommitInfo=var2514, r0=var2758, org.apache.lucene.index.SegmentInfo=var3103, $r1=var1843, $r2=var90, $r3=var688, l0=var1391, $l1=var2722, $b2=var3050, $i3=var1986}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r5 := @this: org.apache.lucene.index.CheckIndex;	r4 := @parameter0: org.apache.lucene.index.CheckIndex$Status;	r0 := @parameter1: org.apache.lucene.index.SegmentCommitInfo;	$r1 = r0.<org.apache.lucene.index.SegmentCommitInfo: org.apache.lucene.index.SegmentInfo info>;	$r2 = $r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(1);	l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>($r3, 36);	$l1 = r4.<org.apache.lucene.index.CheckIndex$Status: long maxSegmentName>;	$b2 = l0 cmp $l1;	$i3 = (int) $b2;	if $i3 <= 0 goto return;	return
;block_num 2