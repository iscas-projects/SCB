(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1216 0)
(declare-sort var240 0)
(declare-sort var2638 0)
(declare-sort var479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/890683843 (var1216) var240)
(declare-fun append/-1031950772 (String var2638) String)
(declare-fun cast-from-var240-to-var2638 (var240) var2638)
(declare-fun pendingDeleteCount/890683843 (var1216) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun writeableLiveDocs/890683843 (var1216) var479)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1216 var1216)
(declare-const null-var479 var479)
(declare-const var2027 var1216) ; Statement: r1 := @this: org.apache.lucene.index.PendingDeletes 
(assert (not (= var2027 null-var1216)))
(define-const var1618 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1618)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1618!1 String)
(assert (= var1618!1 ""))
(assert true)
(define-const var1383 String (append/672562846 var1618!1 "PendingDeletes(seg=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PendingDeletes(seg=") 
(declare-const var1618!2 String)
(assert (= var1618!2 (str.++ var1618!1 "PendingDeletes(seg=")))
(define-const var2 var240 (info/890683843 var2027)) ; Statement: $r2 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.index.SegmentCommitInfo info> 
(assert true)
;(assert (append/-1031950772 var1383 (cast-from-var240-to-var2638 var2))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1383!1 String)
(assert (str.prefixof var1383 var1383!1))
(assert true)
(define-const var3506 String (append/672562846 var1618!2 " numPendingDeletes=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" numPendingDeletes=") 
(declare-const var1618!3 String)
(assert (= var1618!3 (str.++ var1618!2 " numPendingDeletes=")))
(define-const var3951 Int (pendingDeleteCount/890683843 var2027)) ; Statement: $i0 = r1.<org.apache.lucene.index.PendingDeletes: int pendingDeleteCount> 
(assert true)
;(assert (append/-1001720160 var3506 var3951)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3506!1 String)
(assert (str.prefixof var3506 var3506!1))
(assert true)
(define-const var1027 String (append/672562846 var1618!3 " writeable=")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" writeable=") 
(declare-const var1618!4 String)
(assert (= var1618!4 (str.++ var1618!3 " writeable=")))
(define-const var1436 var479 (writeableLiveDocs/890683843 var2027)) ; Statement: $r5 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.util.FixedBitSet writeableLiveDocs> 
 ; Statement: if $r5 == null goto $z0 = 0 
(assert (= var1436 null-var479)) ; Cond: $r5 == null 
(define-const var2328 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-388390247 var1027 var2328)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var1027!1 String)
(assert (str.prefixof var1027 var1027!1))
(assert true)
(define-const var1606 String (toString/-2075883882 var1618!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/890683843=([org.apache.lucene.index.PendingDeletes], org.apache.lucene.index.SegmentCommitInfo), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var240-to-var2638=([org.apache.lucene.index.SegmentCommitInfo], java.lang.Object), pendingDeleteCount/890683843=([org.apache.lucene.index.PendingDeletes], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), writeableLiveDocs/890683843=([org.apache.lucene.index.PendingDeletes], org.apache.lucene.util.FixedBitSet), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1216=org.apache.lucene.index.PendingDeletes, var2027=r1, var1618=$r0, var1383=$r3, var240=org.apache.lucene.index.SegmentCommitInfo, var2=$r2, var2638=java.lang.Object, var3506=$r4, var3951=$i0, var1027=$r6, var479=org.apache.lucene.util.FixedBitSet, var1436=$r5, var2328=$z0, var1606=$r7}
; {org.apache.lucene.index.PendingDeletes=var1216, r1=var2027, $r0=var1618, $r3=var1383, org.apache.lucene.index.SegmentCommitInfo=var240, $r2=var2, java.lang.Object=var2638, $r4=var3506, $i0=var3951, $r6=var1027, org.apache.lucene.util.FixedBitSet=var479, $r5=var1436, $z0=var2328, $r7=var1606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.PendingDeletes;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PendingDeletes(seg=");	$r2 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.index.SegmentCommitInfo info>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" numPendingDeletes=");	$i0 = r1.<org.apache.lucene.index.PendingDeletes: int pendingDeleteCount>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" writeable=");	$r5 = r1.<org.apache.lucene.index.PendingDeletes: org.apache.lucene.util.FixedBitSet writeableLiveDocs>;	if $r5 == null goto $z0 = 0;	$z0 = 0;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3