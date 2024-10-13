(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3928 0)
(declare-sort var1658 0)
(declare-sort var1776 0)
(declare-sort var1593 0)
(declare-sort var3817 0)
(declare-sort var194 0)
(declare-sort var2877 0)
(declare-sort var291 0)
(declare-sort var2208 0)
(declare-sort var1712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ensureMinArgumentCount/1747572415 (var1776 var1658 Int) void)
(declare-fun cast-from-var3928-to-var1776 (var3928) var1776)
(declare-fun ensureMaxArgumentCount/1432579693 (var1776 var1658 Int) void)
(declare-fun var1658_pop/-801615857 (var1658) var1593)
(declare-fun cast-from-var1593-to-String (var1593) String)
(declare-fun getDirectory/92564215 (var1776 String) var3817)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var194_get/935877550 (String (Array Int String)) var3817)
(declare-fun ensureFileDoesNotExist/1682264291 (var1776 var3817) var3817)
(declare-fun ensureJFRFile/-1387304373 (var1776 var3817) void)
(declare-fun var2877-init () var2877)
(declare-fun var2208-init () var2208)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1593) String)
(declare-fun cast-from-var3817-to-var1593 (var3817) var1593)
(declare-fun getMessage/849299655 (var1712) String)
(declare-fun cast-from-var291-to-var1712 (var291) var1712)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/184329998 (var2208 String) void)
(declare-const null-var3928 var3928)
(declare-const null-var1658 var1658)
(declare-const null-var291 var291)
(declare-const var2327 var3928) ; Statement: r0 := @this: jdk.jfr.internal.tool.Assemble 
(assert (not (= var2327 null-var3928)))
(declare-const var1213 var1658) ; Statement: r1 := @parameter0: java.util.Deque 
(assert (not (= var1213 null-var1658)))
(assert true)
;(assert (ensureMinArgumentCount/1747572415 (cast-from-var3928-to-var1776 var2327) var1213 2)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: void ensureMinArgumentCount(java.util.Deque,int)>(r1, 2) 

(declare-const var2327!1 var3928)
(declare-const var1213!1 var1658)
(declare-const var3861 Int)
(assert true)
;(assert (ensureMaxArgumentCount/1432579693 (cast-from-var3928-to-var1776 var2327!1) var1213!1 2)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: void ensureMaxArgumentCount(java.util.Deque,int)>(r1, 2) 

(declare-const var2327!2 var3928)
(declare-const var1213!2 var1658)
(declare-const var3861!1 Int)
(define-const var152 var1593 (var1658_pop/-801615857 var1213!2)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>() 
(define-const var3908 String (cast-from-var1593-to-String var152)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var1042 var3817 (getDirectory/92564215 (cast-from-var3928-to-var1776 var2327!2) var3908)) ; Statement: r4 = virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: java.nio.file.Path getDirectory(java.lang.String)>($r3) 
(define-const var2384 var1593 (var1658_pop/-801615857 var1213!2)) ; Statement: $r5 = interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>() 
(define-const var2790 String (cast-from-var1593-to-String var2384)) ; Statement: $r7 = (java.lang.String) $r5 
(define-const var2399 (Array Int String) arr-String-init) ; Statement: $r6 = newarray (java.lang.String)[0] 
(define-const var2340 var3817 (var194_get/935877550 var2790 var2399)) ; Statement: r8 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>($r7, $r6) 
(assert true)
;(assert (ensureFileDoesNotExist/1682264291 (cast-from-var3928-to-var1776 var2327!2) var2340)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: java.nio.file.Path ensureFileDoesNotExist(java.nio.file.Path)>(r8) 

(declare-const var2327!3 var3928)
(declare-const var2340!1 var3817)
(assert true)
;(assert (ensureJFRFile/-1387304373 (cast-from-var3928-to-var1776 var2327!3) var2340!1)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: void ensureJFRFile(java.nio.file.Path)>(r8) 

(declare-const var2327!4 var3928)
(declare-const var2340!2 var3817)
(define-const var3752 var2877 var2877-init) ; Statement: $r9 = new java.io.FileOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1954 var291) ; Statement: $r17 := @caughtexception 
(assert (not (= var1954 null-var291)))
(define-const var2290 var2208 var2208-init) ; Statement: $r18 = new jdk.jfr.internal.tool.UserDataException 
(define-const var1779 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1779)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1779!1 String)
(assert (= var1779!1 ""))
(assert true)
(define-const var608 String (append/672562846 var1779!1 "could not open destination file ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not open destination file ") 
(declare-const var1779!2 String)
(assert (= var1779!2 (str.++ var1779!1 "could not open destination file ")))
(assert true)
(define-const var2414 String (append/-1031950772 var608 (cast-from-var3817-to-var1593 var2340!2))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(declare-const var608!1 String)
(assert (str.prefixof var608 var608!1))
(assert true)
(define-const var3251 String (append/672562846 var2414 ". ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ") 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 ". ")))
(assert true)
(define-const var610 String (getMessage/849299655 (cast-from-var291-to-var1712 var1954))) ; Statement: $r22 = virtualinvoke $r17.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var874 String (append/672562846 var3251 var610)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3251!1 String)
(assert (= var3251!1 (str.++ var3251 var610)))
(assert true)
(define-const var1375 String (toString/-2075883882 var874)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var2290 var1375)) ; Statement: specialinvoke $r18.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r25) 

(declare-const var2290!1 var2208)
(declare-const var1375!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {ensureMinArgumentCount/1747572415=([jdk.jfr.internal.tool.Command, java.util.Deque, int], void), cast-from-var3928-to-var1776=([jdk.jfr.internal.tool.Assemble], jdk.jfr.internal.tool.Command), ensureMaxArgumentCount/1432579693=([jdk.jfr.internal.tool.Command, java.util.Deque, int], void), var1658_pop/-801615857=([java.util.Deque], java.lang.Object), cast-from-var1593-to-String=([java.lang.Object], java.lang.String), getDirectory/92564215=([jdk.jfr.internal.tool.Command, java.lang.String], java.nio.file.Path), arr-String-init=([], java.lang.String[]), var194_get/935877550=([java.lang.String, java.lang.String[]], java.nio.file.Path), ensureFileDoesNotExist/1682264291=([jdk.jfr.internal.tool.Command, java.nio.file.Path], java.nio.file.Path), ensureJFRFile/-1387304373=([jdk.jfr.internal.tool.Command, java.nio.file.Path], void), var2877-init=([], java.io.FileOutputStream), var2208-init=([], jdk.jfr.internal.tool.UserDataException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3817-to-var1593=([java.nio.file.Path], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var291-to-var1712=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var3928=jdk.jfr.internal.tool.Assemble, var2327=r0, var1658=java.util.Deque, var1213=r1, var1776=jdk.jfr.internal.tool.Command, var3861=2, var1593=java.lang.Object, var152=$r2, var3908=$r3, var3817=java.nio.file.Path, var1042=r4, var2384=$r5, var2790=$r7, var2399=$r6, var194=java.nio.file.Paths, var2340=r8, var2877=java.io.FileOutputStream, var3752=$r9, var291=java.io.IOException, var1954=$r17, var2208=jdk.jfr.internal.tool.UserDataException, var2290=$r18, var1779=$r19, var608=$r20, var2414=$r21, var3251=$r23, var1712=java.lang.Throwable, var610=$r22, var874=$r24, var1375=$r25}
; {jdk.jfr.internal.tool.Assemble=var3928, r0=var2327, java.util.Deque=var1658, r1=var1213, jdk.jfr.internal.tool.Command=var1776, 2=var3861, java.lang.Object=var1593, $r2=var152, $r3=var3908, java.nio.file.Path=var3817, r4=var1042, $r5=var2384, $r7=var2790, $r6=var2399, java.nio.file.Paths=var194, r8=var2340, java.io.FileOutputStream=var2877, $r9=var3752, java.io.IOException=var291, $r17=var1954, jdk.jfr.internal.tool.UserDataException=var2208, $r18=var2290, $r19=var1779, $r20=var608, $r21=var2414, $r23=var3251, java.lang.Throwable=var1712, $r22=var610, $r24=var874, $r25=var1375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.Assemble;	r1 := @parameter0: java.util.Deque;	virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: void ensureMinArgumentCount(java.util.Deque,int)>(r1, 2);	virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: void ensureMaxArgumentCount(java.util.Deque,int)>(r1, 2);	$r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>();	$r3 = (java.lang.String) $r2;	r4 = virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: java.nio.file.Path getDirectory(java.lang.String)>($r3);	$r5 = interfaceinvoke r1.<java.util.Deque: java.lang.Object pop()>();	$r7 = (java.lang.String) $r5;	$r6 = newarray (java.lang.String)[0];	r8 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>($r7, $r6);	virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: java.nio.file.Path ensureFileDoesNotExist(java.nio.file.Path)>(r8);	virtualinvoke r0.<jdk.jfr.internal.tool.Assemble: void ensureJFRFile(java.nio.file.Path)>(r8);	$r9 = new java.io.FileOutputStream;	$r17 := @caughtexception;	$r18 = new jdk.jfr.internal.tool.UserDataException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not open destination file ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ");	$r22 = virtualinvoke $r17.<java.io.IOException: java.lang.String getMessage()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r25);	throw $r18
;block_num 2