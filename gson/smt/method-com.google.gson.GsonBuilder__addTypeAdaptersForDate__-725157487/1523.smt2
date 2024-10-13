(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var45 0)
(declare-sort var2099 0)
(declare-sort var2907 0)
(declare-sort var782 0)
(declare-sort var3936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var45 var45)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2907 var2907)
(declare-const var782-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var3936 var3936)
(declare-const var2700 var45) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var2700 null-var45)))
(declare-const var390 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var390 null-String)))
(declare-const var1836 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1836 null-Int)))
(declare-const var107 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var107 null-Int)))
(declare-const var992 var2907) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var992 null-var2907)))
(define-const var1370 Bool var782-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var2590 var3936 null-var3936) ; Statement: r10 = null 
(define-const var1809 var3936 null-var3936) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var390 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1819 String (trim/-847153721 var390)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var842 Bool (isEmpty/-1285796103 var1819)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var842 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if i0 == 2 goto return 
(assert (= var1836 2)) ; Cond: i0 == 2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var45=com.google.gson.GsonBuilder, var2700=r9, var390=r0, var2099=null_type, var1836=i0, var107=i1, var2907=java.util.List, var992=r2, var782=com.google.gson.internal.sql.SqlTypesSupport, var1370=z0, var3936=com.google.gson.TypeAdapterFactory, var2590=r10, var1809=r11, var1819=$r5, var842=$z1}
; {com.google.gson.GsonBuilder=var45, r9=var2700, r0=var390, null_type=var2099, i0=var1836, i1=var107, java.util.List=var2907, r2=var992, com.google.gson.internal.sql.SqlTypesSupport=var782, z0=var1370, com.google.gson.TypeAdapterFactory=var3936, r10=var2590, r11=var1809, $r5=var1819, $z1=var842}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto (branch);	if i0 == 2 goto return;	return
;block_num 4