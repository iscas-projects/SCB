(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1590 0)
(declare-sort var720 0)
(declare-sort var985 0)
(declare-sort var3704 0)
(declare-sort var2663 0)
(declare-sort var1601 0)
(declare-sort var1766 0)
(declare-sort var3263 0)
(declare-sort var706 0)
(declare-sort var757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun st/-361780184 (var985) var2663)
(declare-fun groupThatCreatedThisInstance/55375992 (var2663) var1601)
(declare-fun errMgr/397531683 (var1590) var3263)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3704) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3704) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun runTimeError/-1488906518 (var3263 var1590 var985 var706 var757 var3704) void)
(declare-fun cast-from-var1766-to-var757 (var1766) var757)
(declare-fun cast-from-String-to-var3704 (String) var3704)
(declare-const null-var1590 var1590)
(declare-const null-var720 var720)
(declare-const null-var985 var985)
(declare-const null-var3704 var3704)
(declare-const null-var1766 var1766)
(declare-const var706-NO_SUCH_PROPERTY var706)
(declare-const var2796 var1590) ; Statement: r5 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var2796 null-var1590)))
(declare-const var2908 var720) ; Statement: r7 := @parameter0: org.stringtemplate.v4.STWriter 
(assert (not (= var2908 null-var720)))
(declare-const var783 var985) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var783 null-var985)))
(declare-const var1271 var3704) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var1271 null-var3704)))
(declare-const var40 var3704) ; Statement: r6 := @parameter3: java.lang.Object 
(assert (not (= var40 null-var3704)))
 ; Statement: if r0 != null goto r26 = r1.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(assert (not (= var1271 null-var3704))) ; Cond: r0 != null 
(define-const var754 var2663 (st/-361780184 var783)) ; Statement: r26 = r1.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(define-const var2809 var1601 (groupThatCreatedThisInstance/55375992 var754)) ; Statement: $r2 = r26.<org.stringtemplate.v4.ST: org.stringtemplate.v4.STGroup groupThatCreatedThisInstance> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var601 var1766) ; Statement: $r16 := @caughtexception 
(assert (not (= var601 null-var1766)))
(define-const var1548 var3263 (errMgr/397531683 var2796)) ; Statement: $r18 = r5.<org.stringtemplate.v4.Interpreter: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var870 var706 var706-NO_SUCH_PROPERTY) ; Statement: $r19 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType NO_SUCH_PROPERTY> 
(define-const var3449 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3449)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3449!1 String)
(assert (= var3449!1 ""))
(assert true)
(define-const var2079 ClassObject (getClass/1258963082 var1271)) ; Statement: $r20 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1570 String (getName/-1958580599 var2079)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3774 String (append/672562846 var3449!1 var1570)) ; Statement: $r22 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3449!2 String)
(assert (= var3449!2 (str.++ var3449!1 var1570)))
(assert true)
(define-const var1259 String (append/672562846 var3774 ".")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3774!1 String)
(assert (= var3774!1 (str.++ var3774 ".")))
(assert true)
(define-const var317 String (append/-1031950772 var1259 var40)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var1259!1 String)
(assert (str.prefixof var1259 var1259!1))
(assert true)
(define-const var3697 String (toString/-2075883882 var317)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (runTimeError/-1488906518 var1548 var2796 var783 var870 (cast-from-var1766-to-var757 var601) (cast-from-String-to-var3704 var3697))) ; Statement: virtualinvoke $r18.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(r5, r1, $r19, $r16, $r25) 

(declare-const var1548!1 var3263)
(declare-const var2796!1 var1590)
(declare-const var783!1 var985)
(declare-const var870!1 var706)
(declare-const var601!1 var1766)
(declare-const var3697!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), groupThatCreatedThisInstance/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.STGroup), errMgr/397531683=([org.stringtemplate.v4.Interpreter], org.stringtemplate.v4.misc.ErrorManager), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), runTimeError/-1488906518=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, org.stringtemplate.v4.misc.ErrorType, java.lang.Throwable, java.lang.Object], void), cast-from-var1766-to-var757=([org.stringtemplate.v4.misc.STNoSuchPropertyException], java.lang.Throwable), cast-from-String-to-var3704=([java.lang.String], java.lang.Object)}
; {var1590=org.stringtemplate.v4.Interpreter, var2796=r5, var720=org.stringtemplate.v4.STWriter, var2908=r7, var985=org.stringtemplate.v4.InstanceScope, var783=r1, var3704=java.lang.Object, var1271=r0, var40=r6, var2663=org.stringtemplate.v4.ST, var754=r26, var1601=org.stringtemplate.v4.STGroup, var2809=$r2, var1766=org.stringtemplate.v4.misc.STNoSuchPropertyException, var601=$r16, var3263=org.stringtemplate.v4.misc.ErrorManager, var1548=$r18, var706=org.stringtemplate.v4.misc.ErrorType, var870=$r19, var3449=$r17, var2079=$r20, var1570=$r21, var3774=$r22, var1259=$r23, var317=$r24, var3697=$r25, var757=java.lang.Throwable}
; {org.stringtemplate.v4.Interpreter=var1590, r5=var2796, org.stringtemplate.v4.STWriter=var720, r7=var2908, org.stringtemplate.v4.InstanceScope=var985, r1=var783, java.lang.Object=var3704, r0=var1271, r6=var40, org.stringtemplate.v4.ST=var2663, r26=var754, org.stringtemplate.v4.STGroup=var1601, $r2=var2809, org.stringtemplate.v4.misc.STNoSuchPropertyException=var1766, $r16=var601, org.stringtemplate.v4.misc.ErrorManager=var3263, $r18=var1548, org.stringtemplate.v4.misc.ErrorType=var706, $r19=var870, $r17=var3449, $r20=var2079, $r21=var1570, $r22=var3774, $r23=var1259, $r24=var317, $r25=var3697, java.lang.Throwable=var757}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.stringtemplate.v4.Interpreter;	r7 := @parameter0: org.stringtemplate.v4.STWriter;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r0 := @parameter2: java.lang.Object;	r6 := @parameter3: java.lang.Object;	if r0 != null goto r26 = r1.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	r26 = r1.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r2 = r26.<org.stringtemplate.v4.ST: org.stringtemplate.v4.STGroup groupThatCreatedThisInstance>;	$r16 := @caughtexception;	$r18 = r5.<org.stringtemplate.v4.Interpreter: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r19 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType NO_SUCH_PROPERTY>;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>();	$r22 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r18.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(r5, r1, $r19, $r16, $r25);	return null
;block_num 3