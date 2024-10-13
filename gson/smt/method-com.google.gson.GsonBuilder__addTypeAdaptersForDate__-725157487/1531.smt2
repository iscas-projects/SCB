(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var386 0)
(declare-sort var659 0)
(declare-sort var1511 0)
(declare-sort var1438 0)
(declare-sort var3940 0)
(declare-sort var2002 0)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun createAdapterFactory/-190254991 (var2002 Int Int) var3940)
(declare-fun var1511_add/328494887 (var1511 var474) Bool)
(declare-fun cast-from-var3940-to-var474 (var3940) var474)
(declare-const null-var386 var386)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1511 var1511)
(declare-const var1438-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var3940 var3940)
(declare-const var2002-DATE var2002)
(declare-const var2262 var386) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var2262 null-var386)))
(declare-const var2640 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2640 null-String)))
(declare-const var898 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var898 null-Int)))
(declare-const var842 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var842 null-Int)))
(declare-const var1315 var1511) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var1315 null-var1511)))
(define-const var3485 Bool var1438-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var253 var3940 null-var3940) ; Statement: r10 = null 
(define-const var677 var3940 null-var3940) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var2640 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var321 String (trim/-847153721 var2640)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3777 Bool (isEmpty/-1285796103 var321)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var3777 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if i0 == 2 goto return 
(assert (not (= var898 2))) ; Negate: Cond: i0 == 2  
 ; Statement: if i1 == 2 goto return 
(assert (not (= var842 2))) ; Negate: Cond: i1 == 2  
(define-const var1647 var2002 var2002-DATE) ; Statement: $r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var278 var3940 (createAdapterFactory/-190254991 var1647 var898 var842)) ; Statement: r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (= (ite var3485 1 0) 0)) ; Cond: z0 == 0 
;(assert (var1511_add/328494887 var1315 (cast-from-var3940-to-var474 var278))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var1315!1 var1511)
(declare-const var278!1 var3940)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var3485 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), createAdapterFactory/-190254991=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, int, int], com.google.gson.TypeAdapterFactory), var1511_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3940-to-var474=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var386=com.google.gson.GsonBuilder, var2262=r9, var2640=r0, var659=null_type, var898=i0, var842=i1, var1511=java.util.List, var1315=r2, var1438=com.google.gson.internal.sql.SqlTypesSupport, var3485=z0, var3940=com.google.gson.TypeAdapterFactory, var253=r10, var677=r11, var321=$r5, var3777=$z1, var2002=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var1647=$r1, var278=r12, var474=java.lang.Object}
; {com.google.gson.GsonBuilder=var386, r9=var2262, r0=var2640, null_type=var659, i0=var898, i1=var842, java.util.List=var1511, r2=var1315, com.google.gson.internal.sql.SqlTypesSupport=var1438, z0=var3485, com.google.gson.TypeAdapterFactory=var3940, r10=var253, r11=var677, $r5=var321, $z1=var3777, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var2002, $r1=var1647, r12=var278, java.lang.Object=var474}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto (branch);	if i0 == 2 goto return;	if i1 == 2 goto return;	$r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	return
;block_num 7