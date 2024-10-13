(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3007 0)
(declare-sort var278 0)
(declare-sort var3821 0)
(declare-sort var699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/957810353 (var3007) var278)
(declare-fun append/-1031950772 (String var3821) String)
(declare-fun cast-from-var278-to-var3821 (var278) var3821)
(declare-fun pendingDeletes/957810353 (var3007) var699)
(declare-fun cast-from-var699-to-var3821 (var699) var3821)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3007 var3007)
(declare-const var2972 var3007) ; Statement: r1 := @this: org.apache.lucene.index.ReadersAndUpdates 
(assert (not (= var2972 null-var3007)))
(define-const var1211 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1211)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1211!1 String)
(assert (= var1211!1 ""))
(assert true)
(define-const var2710 String (append/672562846 var1211!1 "ReadersAndLiveDocs(seg=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ReadersAndLiveDocs(seg=") 
(declare-const var1211!2 String)
(assert (= var1211!2 (str.++ var1211!1 "ReadersAndLiveDocs(seg=")))
(define-const var435 var278 (info/957810353 var2972)) ; Statement: $r2 = r1.<org.apache.lucene.index.ReadersAndUpdates: org.apache.lucene.index.SegmentCommitInfo info> 
(assert true)
;(assert (append/-1031950772 var2710 (cast-from-var278-to-var3821 var435))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2710!1 String)
(assert (str.prefixof var2710 var2710!1))
(assert true)
(define-const var441 String (append/672562846 var1211!2 " pendingDeletes=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" pendingDeletes=") 
(declare-const var1211!3 String)
(assert (= var1211!3 (str.++ var1211!2 " pendingDeletes=")))
(define-const var3531 var699 (pendingDeletes/957810353 var2972)) ; Statement: $r4 = r1.<org.apache.lucene.index.ReadersAndUpdates: org.apache.lucene.index.PendingDeletes pendingDeletes> 
(assert true)
;(assert (append/-1031950772 var441 (cast-from-var699-to-var3821 var3531))) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var441!1 String)
(assert (str.prefixof var441 var441!1))
(assert true)
(define-const var2831 String (toString/-2075883882 var1211!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/957810353=([org.apache.lucene.index.ReadersAndUpdates], org.apache.lucene.index.SegmentCommitInfo), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var278-to-var3821=([org.apache.lucene.index.SegmentCommitInfo], java.lang.Object), pendingDeletes/957810353=([org.apache.lucene.index.ReadersAndUpdates], org.apache.lucene.index.PendingDeletes), cast-from-var699-to-var3821=([org.apache.lucene.index.PendingDeletes], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3007=org.apache.lucene.index.ReadersAndUpdates, var2972=r1, var1211=$r0, var2710=$r3, var278=org.apache.lucene.index.SegmentCommitInfo, var435=$r2, var3821=java.lang.Object, var441=$r5, var699=org.apache.lucene.index.PendingDeletes, var3531=$r4, var2831=$r6}
; {org.apache.lucene.index.ReadersAndUpdates=var3007, r1=var2972, $r0=var1211, $r3=var2710, org.apache.lucene.index.SegmentCommitInfo=var278, $r2=var435, java.lang.Object=var3821, $r5=var441, org.apache.lucene.index.PendingDeletes=var699, $r4=var3531, $r6=var2831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.ReadersAndUpdates;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ReadersAndLiveDocs(seg=");	$r2 = r1.<org.apache.lucene.index.ReadersAndUpdates: org.apache.lucene.index.SegmentCommitInfo info>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" pendingDeletes=");	$r4 = r1.<org.apache.lucene.index.ReadersAndUpdates: org.apache.lucene.index.PendingDeletes pendingDeletes>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1