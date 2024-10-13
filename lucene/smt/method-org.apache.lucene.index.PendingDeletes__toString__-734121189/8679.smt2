(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort var377 0)
(declare-sort var12 0)
(declare-sort var704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/890683843 (var2103) var377)
(declare-fun append/-1031950772 (String var12) String)
(declare-fun cast-from-var377-to-var12 (var377) var12)
(declare-fun pendingDeleteCount/890683843 (var2103) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun writeableLiveDocs/890683843 (var2103) var704)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2103 var2103)
(declare-const null-var704 var704)
(declare-const var1031 var2103) ; Statement: r1 := @this: org.apache.lucene.index.PendingDeletes 
(assert (not (= var1031 null-var2103)))
(define-const var1559 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1559)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1559!1 String)
(assert (= var1559!1 ""))
(assert true)
(define-const var2602 String (append/672562846 var1559!1 "PendingDeletes(seg=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PendingDeletes(seg=") 
(declare-const var1559!2 String)
(assert (= var1559!2 (str.++ var1559!1 "PendingDeletes(seg=")))
(define-const var436 var377 (info/890683843 var1031)) ; Statement: $r2 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.index.SegmentCommitInfo info> 
(assert true)
;(assert (append/-1031950772 var2602 (cast-from-var377-to-var12 var436))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2602!1 String)
(assert (str.prefixof var2602 var2602!1))
(assert true)
(define-const var1884 String (append/672562846 var1559!2 " numPendingDeletes=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" numPendingDeletes=") 
(declare-const var1559!3 String)
(assert (= var1559!3 (str.++ var1559!2 " numPendingDeletes=")))
(define-const var3207 Int (pendingDeleteCount/890683843 var1031)) ; Statement: $i0 = r1.<org.apache.lucene.index.PendingDeletes: int pendingDeleteCount> 
(assert true)
;(assert (append/-1001720160 var1884 var3207)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1884!1 String)
(assert (str.prefixof var1884 var1884!1))
(assert true)
(define-const var3393 String (append/672562846 var1559!3 " writeable=")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" writeable=") 
(declare-const var1559!4 String)
(assert (= var1559!4 (str.++ var1559!3 " writeable=")))
(define-const var2523 var704 (writeableLiveDocs/890683843 var1031)) ; Statement: $r5 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.util.FixedBitSet writeableLiveDocs> 
 ; Statement: if $r5 == null goto $z0 = 0 
(assert (not (= var2523 null-var704))) ; Negate: Cond: $r5 == null  
(define-const var2876 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-388390247 var3393 var2876)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var3393!1 String)
(assert (str.prefixof var3393 var3393!1))
(assert true)
(define-const var346 String (toString/-2075883882 var1559!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/890683843=([org.apache.lucene.index.PendingDeletes], org.apache.lucene.index.SegmentCommitInfo), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var377-to-var12=([org.apache.lucene.index.SegmentCommitInfo], java.lang.Object), pendingDeleteCount/890683843=([org.apache.lucene.index.PendingDeletes], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), writeableLiveDocs/890683843=([org.apache.lucene.index.PendingDeletes], org.apache.lucene.util.FixedBitSet), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2103=org.apache.lucene.index.PendingDeletes, var1031=r1, var1559=$r0, var2602=$r3, var377=org.apache.lucene.index.SegmentCommitInfo, var436=$r2, var12=java.lang.Object, var1884=$r4, var3207=$i0, var3393=$r6, var704=org.apache.lucene.util.FixedBitSet, var2523=$r5, var2876=$z0, var346=$r7}
; {org.apache.lucene.index.PendingDeletes=var2103, r1=var1031, $r0=var1559, $r3=var2602, org.apache.lucene.index.SegmentCommitInfo=var377, $r2=var436, java.lang.Object=var12, $r4=var1884, $i0=var3207, $r6=var3393, org.apache.lucene.util.FixedBitSet=var704, $r5=var2523, $z0=var2876, $r7=var346}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.PendingDeletes;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PendingDeletes(seg=");	$r2 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.index.SegmentCommitInfo info>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" numPendingDeletes=");	$i0 = r1.<org.apache.lucene.index.PendingDeletes: int pendingDeleteCount>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" writeable=");	$r5 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.util.FixedBitSet writeableLiveDocs>;	if $r5 == null goto $z0 = 0;	$z0 = 1;	goto [?= virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0)];	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3