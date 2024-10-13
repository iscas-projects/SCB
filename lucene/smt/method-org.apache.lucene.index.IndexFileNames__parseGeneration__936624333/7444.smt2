(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2223 0)
(declare-sort var2233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2233_stripExtension/2114647214 (String) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-const null-String String)
(declare-const var2233-$assertionsDisabled Bool)
(declare-const var482 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var482 null-String)))
(define-const var2605 Bool var2233-$assertionsDisabled) ; Statement: $z0 = <org.apache.lucene.index.IndexFileNames: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0) 
(assert (not (= (ite var2605 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1772 String (var2233_stripExtension/2114647214 var482)) ; Statement: $r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0) 
(assert (and true (and (>= 1 0) (>= (str.len var1772) 1))))
(define-const var3480 String (substring/850833817 var1772 1)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
(define-const var2663 (Array Int String) (split/-636890950 var3480 "_")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.String: java.lang.String[] split(java.lang.String)>("_") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3480 "_") i) (re.++ (re.* re.all) (str.to_re "_") (re.* re.all))))))
(define-const var3376 Int (getLength-Arr-String-1 var2663)) ; Statement: $i0 = lengthof $r4 
 ; Statement: if $i0 == 2 goto $r3 = $r4[1] 
(assert (= var3376 2)) ; Cond: $i0 == 2 
(define-const var603 String (select var2663 1)) ; Statement: $r3 = $r4[1] 
(define-const var581 Int (Int_parseLong/758265864 var603 36)) ; Statement: $l1 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>($r3, 36) 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2233_stripExtension/2114647214=([java.lang.String], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), Int_parseLong/758265864=([java.lang.String, int], long)}
; {var482=r0, var2223=null_type, var2233=org.apache.lucene.index.IndexFileNames, var2605=$z0, var1772=$r1, var3480=$r2, var2663=$r4, var3376=$i0, var603=$r3, var581=$l1}
; {r0=var482, null_type=var2223, org.apache.lucene.index.IndexFileNames=var2233, $z0=var2605, $r1=var1772, $r2=var3480, $r4=var2663, $i0=var3376, $r3=var603, $l1=var581}
;seq <java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = <org.apache.lucene.index.IndexFileNames: boolean $assertionsDisabled>;	if $z0 != 0 goto $r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0);	$r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>(1);	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String[] split(java.lang.String)>("_");	$i0 = lengthof $r4;	if $i0 == 2 goto $r3 = $r4[1];	$r3 = $r4[1];	$l1 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>($r3, 36);	return $l1
;block_num 3