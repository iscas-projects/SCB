(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3191 0)
(declare-sort var1100 0)
(declare-sort var2514 0)
(declare-sort var3107 0)
(declare-sort var400 0)
(declare-sort var3830 0)
(declare-sort var73 0)
(declare-sort var288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3830) String)
(declare-fun cast-from-var2514-to-var3830 (var2514) var3830)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var73 String var288) void)
(declare-fun cast-from-var3191-to-var73 (var3191) var73)
(declare-fun cast-from-var2514-to-var288 (var2514) var288)
(declare-fun batchUpdateException/543455899 (var3191) var2514)
(declare-fun successfulBatchResults/543455899 (var3191) var3107)
(declare-fun batchResult/543455899 (var3191) var400)
(declare-const null-var3191 var3191)
(declare-const null-String String)
(declare-const null-var2514 var2514)
(declare-const null-var3107 var3107)
(declare-const null-var400 var400)
(declare-const var3879 var3191) ; Statement: r0 := @this: org.apache.ibatis.executor.BatchExecutorException 
(assert (not (= var3879 null-var3191)))
(declare-const var1966 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1966 null-String)))
(declare-const var1140 var2514) ; Statement: r4 := @parameter1: java.sql.BatchUpdateException 
(assert (not (= var1140 null-var2514)))
(declare-const var1487 var3107) ; Statement: r8 := @parameter2: java.util.List 
(assert (not (= var1487 null-var3107)))
(declare-const var394 var400) ; Statement: r9 := @parameter3: org.apache.ibatis.executor.BatchResult 
(assert (not (= var394 null-var400)))
(define-const var1840 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1840)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1840!1 String)
(assert (= var1840!1 ""))
(assert true)
(define-const var1903 String (append/672562846 var1840!1 var1966)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1840!2 String)
(assert (= var1840!2 (str.++ var1840!1 var1966)))
(assert true)
(define-const var41 String (append/672562846 var1903 " Cause: ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Cause: ") 
(declare-const var1903!1 String)
(assert (= var1903!1 (str.++ var1903 " Cause: ")))
(assert true)
(define-const var3680 String (append/-1031950772 var41 (cast-from-var2514-to-var3830 var1140))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var41!1 String)
(assert (str.prefixof var41 var41!1))
(assert true)
(define-const var3389 String (toString/-2075883882 var3680)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 (cast-from-var3191-to-var73 var3879) var3389 (cast-from-var2514-to-var288 var1140))) ; Statement: specialinvoke r0.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r7, r4) 

(declare-const var3879!1 var3191)
(declare-const var3389!1 String)
(declare-const var1140!1 var2514)
(declare-const var3879!2 var3191)
(assert (not (= var3879!2 null-var3191)))
(assert (= (batchUpdateException/543455899 var3879!2) var1140!1)) ; Statement: r0.<org.apache.ibatis.executor.BatchExecutorException: java.sql.BatchUpdateException batchUpdateException> = r4 
(declare-const var3879!3 var3191)
(assert (not (= var3879!3 null-var3191)))
(assert (= (successfulBatchResults/543455899 var3879!3) var1487)) ; Statement: r0.<org.apache.ibatis.executor.BatchExecutorException: java.util.List successfulBatchResults> = r8 
(declare-const var3879!4 var3191)
(assert (not (= var3879!4 null-var3191)))
(assert (= (batchResult/543455899 var3879!4) var394)) ; Statement: r0.<org.apache.ibatis.executor.BatchExecutorException: org.apache.ibatis.executor.BatchResult batchResult> = r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2514-to-var3830=([java.sql.BatchUpdateException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var3191-to-var73=([org.apache.ibatis.executor.BatchExecutorException], org.apache.ibatis.executor.ExecutorException), cast-from-var2514-to-var288=([java.sql.BatchUpdateException], java.lang.Throwable), batchUpdateException/543455899=([org.apache.ibatis.executor.BatchExecutorException], java.sql.BatchUpdateException), successfulBatchResults/543455899=([org.apache.ibatis.executor.BatchExecutorException], java.util.List), batchResult/543455899=([org.apache.ibatis.executor.BatchExecutorException], org.apache.ibatis.executor.BatchResult)}
; {var3191=org.apache.ibatis.executor.BatchExecutorException, var3879=r0, var1966=r2, var1100=null_type, var2514=java.sql.BatchUpdateException, var1140=r4, var3107=java.util.List, var1487=r8, var400=org.apache.ibatis.executor.BatchResult, var394=r9, var1840=$r1, var1903=$r3, var41=$r5, var3830=java.lang.Object, var3680=$r6, var3389=$r7, var73=org.apache.ibatis.executor.ExecutorException, var288=java.lang.Throwable}
; {org.apache.ibatis.executor.BatchExecutorException=var3191, r0=var3879, r2=var1966, null_type=var1100, java.sql.BatchUpdateException=var2514, r4=var1140, java.util.List=var3107, r8=var1487, org.apache.ibatis.executor.BatchResult=var400, r9=var394, $r1=var1840, $r3=var1903, $r5=var41, java.lang.Object=var3830, $r6=var3680, $r7=var3389, org.apache.ibatis.executor.ExecutorException=var73, java.lang.Throwable=var288}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.BatchExecutorException;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.sql.BatchUpdateException;	r8 := @parameter2: java.util.List;	r9 := @parameter3: org.apache.ibatis.executor.BatchResult;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Cause: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r7, r4);	r0.<org.apache.ibatis.executor.BatchExecutorException: java.sql.BatchUpdateException batchUpdateException> = r4;	r0.<org.apache.ibatis.executor.BatchExecutorException: java.util.List successfulBatchResults> = r8;	r0.<org.apache.ibatis.executor.BatchExecutorException: org.apache.ibatis.executor.BatchResult batchResult> = r9;	return
;block_num 1