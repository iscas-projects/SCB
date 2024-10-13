(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2100 0)
(declare-sort var2068 0)
(declare-sort var1919 0)
(declare-sort var547 0)
(declare-sort var3875 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166642301 (String Bool) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1919_debug/381960894 (String) void)
(declare-fun reset/-749019037 (var2100) void)
(declare-fun var547-init () var547)
(declare-fun var3850-init () var3850)
(declare-fun <init>/-1681595970 (var3850 String) void)
(declare-fun getParent/-1549881890 (var3850) String)
(declare-const null-var2100 var2100)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-var3875 var3875)
(declare-const var2758 var2100) ; Statement: r7 := @this: org.apache.log4j.FileAppender 
(assert (not (= var2758 null-var2100)))
(declare-const var1283 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1283 null-String)))
(declare-const var816 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var816 null-Bool)))
(declare-const var1818 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1818 null-Bool)))
(declare-const var3906 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3906 null-Int)))
(define-const var3011 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3011)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3011!1 String)
(assert true)
(define-const var2399 String (append/1560614132 var3011!1 "setFile called: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("setFile called: ") 
(declare-const var3011!2 String)
(assert (str.prefixof var3011!1 var3011!2))
(assert true)
(define-const var2218 String (append/1560614132 var2399 var1283)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2399!1 String)
(assert (str.prefixof var2399 var2399!1))
(assert true)
(define-const var1371 String (append/1560614132 var2218 ", ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2218!1 String)
(assert (str.prefixof var2218 var2218!1))
(assert true)
(define-const var2185 String (append/-1166642301 var1371 var816)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 
(assert true)
(define-const var3525 String (toString/-222306083 var2185)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1919_debug/381960894 var3525)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6) 

(declare-const var3525!1 String)
 ; Statement: if z1 == 0 goto virtualinvoke r7.<org.apache.log4j.FileAppender: void reset()>() 
(assert (= (ite var1818 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (reset/-749019037 var2758)) ; Statement: virtualinvoke r7.<org.apache.log4j.FileAppender: void reset()>() 

(declare-const var2758!1 var2100)
(define-const var2785 var547 var547-init) ; Statement: $r8 = new java.io.FileOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var701 var3875) ; Statement: $r10 := @caughtexception 
(assert (not (= var701 null-var3875)))
(define-const var2397 var3850 var3850-init) ; Statement: $r11 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2397 var1283)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var2397!1 var3850)
(declare-const var1283!1 String)
(assert true)
(define-const var402 String (getParent/-1549881890 var2397!1)) ; Statement: r12 = virtualinvoke $r11.<java.io.File: java.lang.String getParent()>() 
 ; Statement: if r12 == null goto throw $r10 
(assert (= var402 null-String)) ; Cond: r12 == null 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1919_debug/381960894=([java.lang.String], void), reset/-749019037=([org.apache.log4j.FileAppender], void), var547-init=([], java.io.FileOutputStream), var3850-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getParent/-1549881890=([java.io.File], java.lang.String)}
; {var2100=org.apache.log4j.FileAppender, var2758=r7, var1283=r1, var2068=null_type, var816=z0, var1818=z1, var3906=i0, var3011=$r0, var2399=$r2, var2218=$r3, var1371=$r4, var2185=$r5, var3525=$r6, var1919=org.apache.log4j.helpers.LogLog, var547=java.io.FileOutputStream, var2785=$r8, var3875=java.io.FileNotFoundException, var701=$r10, var3850=java.io.File, var2397=$r11, var402=r12}
; {org.apache.log4j.FileAppender=var2100, r7=var2758, r1=var1283, null_type=var2068, z0=var816, z1=var1818, i0=var3906, $r0=var3011, $r2=var2399, $r3=var2218, $r4=var1371, $r5=var2185, $r6=var3525, org.apache.log4j.helpers.LogLog=var1919, java.io.FileOutputStream=var547, $r8=var2785, java.io.FileNotFoundException=var3875, $r10=var701, java.io.File=var3850, $r11=var2397, r12=var402}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.FileAppender;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	i0 := @parameter3: int;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("setFile called: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6);	if z1 == 0 goto virtualinvoke r7.<org.apache.log4j.FileAppender: void reset()>();	virtualinvoke r7.<org.apache.log4j.FileAppender: void reset()>();	$r8 = new java.io.FileOutputStream;	$r10 := @caughtexception;	$r11 = new java.io.File;	specialinvoke $r11.<java.io.File: void <init>(java.lang.String)>(r1);	r12 = virtualinvoke $r11.<java.io.File: java.lang.String getParent()>();	if r12 == null goto throw $r10;	throw $r10
;block_num 4