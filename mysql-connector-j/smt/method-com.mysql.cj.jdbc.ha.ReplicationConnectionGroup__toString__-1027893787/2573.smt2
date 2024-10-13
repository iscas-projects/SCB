(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3355 0)
(declare-sort var2079 0)
(declare-sort var801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun groupName/-668580603 (var3355) String)
(declare-fun sourceHostList/-668580603 (var3355) var2079)
(declare-fun append/-1031950772 (String var801) String)
(declare-fun cast-from-var2079-to-var801 (var2079) var801)
(declare-fun replicaHostList/-668580603 (var3355) var2079)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3355 var3355)
(declare-const var2695 var3355) ; Statement: r1 := @this: com.mysql.cj.jdbc.ha.ReplicationConnectionGroup 
(assert (not (= var2695 null-var3355)))
(define-const var2397 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2397)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2397!1 String)
(assert (= var2397!1 ""))
(assert true)
(define-const var2419 String (append/672562846 var2397!1 "ReplicationConnectionGroup[groupName=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ReplicationConnectionGroup[groupName=") 
(declare-const var2397!2 String)
(assert (= var2397!2 (str.++ var2397!1 "ReplicationConnectionGroup[groupName=")))
(define-const var2550 String (groupName/-668580603 var2695)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.ha.ReplicationConnectionGroup: java.lang.String groupName> 
(assert true)
(define-const var2828 String (append/672562846 var2419 var2550)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2419!1 String)
(assert (= var2419!1 (str.++ var2419 var2550)))
(assert true)
(define-const var866 String (append/672562846 var2828 ",sourceHostList=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",sourceHostList=") 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 ",sourceHostList=")))
(define-const var1872 var2079 (sourceHostList/-668580603 var2695)) ; Statement: $r5 = r1.<com.mysql.cj.jdbc.ha.ReplicationConnectionGroup: java.util.Set sourceHostList> 
(assert true)
(define-const var2680 String (append/-1031950772 var866 (cast-from-var2079-to-var801 var1872))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var866!1 String)
(assert (str.prefixof var866 var866!1))
(assert true)
(define-const var877 String (append/672562846 var2680 ",replicaHostList=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",replicaHostList=") 
(declare-const var2680!1 String)
(assert (= var2680!1 (str.++ var2680 ",replicaHostList=")))
(define-const var2858 var2079 (replicaHostList/-668580603 var2695)) ; Statement: $r8 = r1.<com.mysql.cj.jdbc.ha.ReplicationConnectionGroup: java.util.Set replicaHostList> 
(assert true)
(define-const var445 String (append/-1031950772 var877 (cast-from-var2079-to-var801 var2858))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var877!1 String)
(assert (str.prefixof var877 var877!1))
(assert true)
(define-const var163 String (append/672562846 var445 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var445!1 String)
(assert (= var445!1 (str.++ var445 "]")))
(assert true)
(define-const var2549 String (toString/-2075883882 var163)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), groupName/-668580603=([com.mysql.cj.jdbc.ha.ReplicationConnectionGroup], java.lang.String), sourceHostList/-668580603=([com.mysql.cj.jdbc.ha.ReplicationConnectionGroup], java.util.Set), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2079-to-var801=([java.util.Set], java.lang.Object), replicaHostList/-668580603=([com.mysql.cj.jdbc.ha.ReplicationConnectionGroup], java.util.Set), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3355=com.mysql.cj.jdbc.ha.ReplicationConnectionGroup, var2695=r1, var2397=$r0, var2419=$r3, var2550=$r2, var2828=$r4, var866=$r6, var2079=java.util.Set, var1872=$r5, var801=java.lang.Object, var2680=$r7, var877=$r9, var2858=$r8, var445=$r10, var163=$r11, var2549=$r12}
; {com.mysql.cj.jdbc.ha.ReplicationConnectionGroup=var3355, r1=var2695, $r0=var2397, $r3=var2419, $r2=var2550, $r4=var2828, $r6=var866, java.util.Set=var2079, $r5=var1872, java.lang.Object=var801, $r7=var2680, $r9=var877, $r8=var2858, $r10=var445, $r11=var163, $r12=var2549}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.ha.ReplicationConnectionGroup;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ReplicationConnectionGroup[groupName=");	$r2 = r1.<com.mysql.cj.jdbc.ha.ReplicationConnectionGroup: java.lang.String groupName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",sourceHostList=");	$r5 = r1.<com.mysql.cj.jdbc.ha.ReplicationConnectionGroup: java.util.Set sourceHostList>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",replicaHostList=");	$r8 = r1.<com.mysql.cj.jdbc.ha.ReplicationConnectionGroup: java.util.Set replicaHostList>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1