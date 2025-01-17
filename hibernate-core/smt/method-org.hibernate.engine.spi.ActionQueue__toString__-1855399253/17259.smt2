(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var700 0)
(declare-sort var430 0)
(declare-sort var1257 0)
(declare-sort var1990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun insertions/395077203 (var700) var430)
(declare-fun var700_toString/-66304465 (var430) String)
(declare-fun updates/395077203 (var700) var430)
(declare-fun deletions/395077203 (var700) var430)
(declare-fun orphanRemovals/395077203 (var700) var430)
(declare-fun collectionCreations/395077203 (var700) var430)
(declare-fun collectionRemovals/395077203 (var700) var430)
(declare-fun collectionUpdates/395077203 (var700) var430)
(declare-fun collectionQueuedOps/395077203 (var700) var430)
(declare-fun unresolvedInsertions/395077203 (var700) var1257)
(declare-fun append/-1031950772 (String var1990) String)
(declare-fun cast-from-var1257-to-var1990 (var1257) var1990)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var700 var700)
(declare-const var3844 var700) ; Statement: r1 := @this: org.hibernate.engine.spi.ActionQueue 
(assert (not (= var3844 null-var700)))
(define-const var1967 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1967)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1967!1 String)
(assert (= var1967!1 ""))
(assert true)
(define-const var703 String (append/672562846 var1967!1 "ActionQueue[insertions=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ActionQueue[insertions=") 
(declare-const var1967!2 String)
(assert (= var1967!2 (str.++ var1967!1 "ActionQueue[insertions=")))
(define-const var2598 var430 (insertions/395077203 var3844)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList insertions> 
(define-const var2034 String (var700_toString/-66304465 var2598)) ; Statement: $r3 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r2) 
(assert true)
(define-const var1373 String (append/672562846 var703 var2034)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var703!1 String)
(assert (= var703!1 (str.++ var703 var2034)))
(assert true)
(define-const var1978 String (append/672562846 var1373 " updates=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" updates=") 
(declare-const var1373!1 String)
(assert (= var1373!1 (str.++ var1373 " updates=")))
(define-const var899 var430 (updates/395077203 var3844)) ; Statement: $r6 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList updates> 
(define-const var1297 String (var700_toString/-66304465 var899)) ; Statement: $r7 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r6) 
(assert true)
(define-const var2029 String (append/672562846 var1978 var1297)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1978!1 String)
(assert (= var1978!1 (str.++ var1978 var1297)))
(assert true)
(define-const var5 String (append/672562846 var2029 " deletions=")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deletions=") 
(declare-const var2029!1 String)
(assert (= var2029!1 (str.++ var2029 " deletions=")))
(define-const var2569 var430 (deletions/395077203 var3844)) ; Statement: $r10 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList deletions> 
(define-const var3916 String (var700_toString/-66304465 var2569)) ; Statement: $r11 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r10) 
(assert true)
(define-const var1594 String (append/672562846 var5 var3916)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var5!1 String)
(assert (= var5!1 (str.++ var5 var3916)))
(assert true)
(define-const var64 String (append/672562846 var1594 " orphanRemovals=")) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" orphanRemovals=") 
(declare-const var1594!1 String)
(assert (= var1594!1 (str.++ var1594 " orphanRemovals=")))
(define-const var1569 var430 (orphanRemovals/395077203 var3844)) ; Statement: $r14 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList orphanRemovals> 
(define-const var2316 String (var700_toString/-66304465 var1569)) ; Statement: $r15 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r14) 
(assert true)
(define-const var1194 String (append/672562846 var64 var2316)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var64!1 String)
(assert (= var64!1 (str.++ var64 var2316)))
(assert true)
(define-const var2284 String (append/672562846 var1194 " collectionCreations=")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionCreations=") 
(declare-const var1194!1 String)
(assert (= var1194!1 (str.++ var1194 " collectionCreations=")))
(define-const var2212 var430 (collectionCreations/395077203 var3844)) ; Statement: $r18 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionCreations> 
(define-const var3183 String (var700_toString/-66304465 var2212)) ; Statement: $r19 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r18) 
(assert true)
(define-const var2344 String (append/672562846 var2284 var3183)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2284!1 String)
(assert (= var2284!1 (str.++ var2284 var3183)))
(assert true)
(define-const var512 String (append/672562846 var2344 " collectionRemovals=")) ; Statement: $r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionRemovals=") 
(declare-const var2344!1 String)
(assert (= var2344!1 (str.++ var2344 " collectionRemovals=")))
(define-const var1455 var430 (collectionRemovals/395077203 var3844)) ; Statement: $r22 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionRemovals> 
(define-const var1162 String (var700_toString/-66304465 var1455)) ; Statement: $r23 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r22) 
(assert true)
(define-const var1696 String (append/672562846 var512 var1162)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var512!1 String)
(assert (= var512!1 (str.++ var512 var1162)))
(assert true)
(define-const var1631 String (append/672562846 var1696 " collectionUpdates=")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionUpdates=") 
(declare-const var1696!1 String)
(assert (= var1696!1 (str.++ var1696 " collectionUpdates=")))
(define-const var3085 var430 (collectionUpdates/395077203 var3844)) ; Statement: $r26 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionUpdates> 
(define-const var3905 String (var700_toString/-66304465 var3085)) ; Statement: $r27 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r26) 
(assert true)
(define-const var775 String (append/672562846 var1631 var3905)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1631!1 String)
(assert (= var1631!1 (str.++ var1631 var3905)))
(assert true)
(define-const var3234 String (append/672562846 var775 " collectionQueuedOps=")) ; Statement: $r32 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionQueuedOps=") 
(declare-const var775!1 String)
(assert (= var775!1 (str.++ var775 " collectionQueuedOps=")))
(define-const var1946 var430 (collectionQueuedOps/395077203 var3844)) ; Statement: $r30 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionQueuedOps> 
(define-const var1259 String (var700_toString/-66304465 var1946)) ; Statement: $r31 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r30) 
(assert true)
(define-const var816 String (append/672562846 var3234 var1259)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var3234!1 String)
(assert (= var3234!1 (str.++ var3234 var1259)))
(assert true)
(define-const var3979 String (append/672562846 var816 " unresolvedInsertDependencies=")) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" unresolvedInsertDependencies=") 
(declare-const var816!1 String)
(assert (= var816!1 (str.++ var816 " unresolvedInsertDependencies=")))
(define-const var3644 var1257 (unresolvedInsertions/395077203 var3844)) ; Statement: $r34 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.action.internal.UnresolvedEntityInsertActions unresolvedInsertions> 
(assert true)
(define-const var2584 String (append/-1031950772 var3979 (cast-from-var1257-to-var1990 var3644))) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r34) 
(declare-const var3979!1 String)
(assert (str.prefixof var3979 var3979!1))
(assert true)
(define-const var308 String (append/672562846 var2584 "]")) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2584!1 String)
(assert (= var2584!1 (str.++ var2584 "]")))
(assert true)
(define-const var3643 String (toString/-2075883882 var308)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), insertions/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), var700_toString/-66304465=([org.hibernate.engine.spi.ExecutableList], java.lang.String), updates/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), deletions/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), orphanRemovals/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), collectionCreations/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), collectionRemovals/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), collectionUpdates/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), collectionQueuedOps/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.engine.spi.ExecutableList), unresolvedInsertions/395077203=([org.hibernate.engine.spi.ActionQueue], org.hibernate.action.internal.UnresolvedEntityInsertActions), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1257-to-var1990=([org.hibernate.action.internal.UnresolvedEntityInsertActions], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var700=org.hibernate.engine.spi.ActionQueue, var3844=r1, var1967=$r0, var703=$r4, var430=org.hibernate.engine.spi.ExecutableList, var2598=$r2, var2034=$r3, var1373=$r5, var1978=$r8, var899=$r6, var1297=$r7, var2029=$r9, var5=$r12, var2569=$r10, var3916=$r11, var1594=$r13, var64=$r16, var1569=$r14, var2316=$r15, var1194=$r17, var2284=$r20, var2212=$r18, var3183=$r19, var2344=$r21, var512=$r24, var1455=$r22, var1162=$r23, var1696=$r25, var1631=$r28, var3085=$r26, var3905=$r27, var775=$r29, var3234=$r32, var1946=$r30, var1259=$r31, var816=$r33, var3979=$r35, var1257=org.hibernate.action.internal.UnresolvedEntityInsertActions, var3644=$r34, var1990=java.lang.Object, var2584=$r36, var308=$r37, var3643=$r38}
; {org.hibernate.engine.spi.ActionQueue=var700, r1=var3844, $r0=var1967, $r4=var703, org.hibernate.engine.spi.ExecutableList=var430, $r2=var2598, $r3=var2034, $r5=var1373, $r8=var1978, $r6=var899, $r7=var1297, $r9=var2029, $r12=var5, $r10=var2569, $r11=var3916, $r13=var1594, $r16=var64, $r14=var1569, $r15=var2316, $r17=var1194, $r20=var2284, $r18=var2212, $r19=var3183, $r21=var2344, $r24=var512, $r22=var1455, $r23=var1162, $r25=var1696, $r28=var1631, $r26=var3085, $r27=var3905, $r29=var775, $r32=var3234, $r30=var1946, $r31=var1259, $r33=var816, $r35=var3979, org.hibernate.action.internal.UnresolvedEntityInsertActions=var1257, $r34=var3644, java.lang.Object=var1990, $r36=var2584, $r37=var308, $r38=var3643}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 18,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.ActionQueue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ActionQueue[insertions=");	$r2 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList insertions>;	$r3 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" updates=");	$r6 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList updates>;	$r7 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deletions=");	$r10 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList deletions>;	$r11 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" orphanRemovals=");	$r14 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList orphanRemovals>;	$r15 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionCreations=");	$r18 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionCreations>;	$r19 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionRemovals=");	$r22 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionRemovals>;	$r23 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionUpdates=");	$r26 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionUpdates>;	$r27 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r32 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" collectionQueuedOps=");	$r30 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.engine.spi.ExecutableList collectionQueuedOps>;	$r31 = staticinvoke <org.hibernate.engine.spi.ActionQueue: java.lang.String toString(org.hibernate.engine.spi.ExecutableList)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" unresolvedInsertDependencies=");	$r34 = r1.<org.hibernate.engine.spi.ActionQueue: org.hibernate.action.internal.UnresolvedEntityInsertActions unresolvedInsertions>;	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r34);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	return $r38
;block_num 1