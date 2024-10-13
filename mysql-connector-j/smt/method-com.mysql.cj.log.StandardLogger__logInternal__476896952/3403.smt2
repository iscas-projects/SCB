(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1986 0)
(declare-sort var706 0)
(declare-sort var266 0)
(declare-sort var2020 0)
(declare-sort var3292 0)
(declare-sort var3870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2020-init () var2020)
(declare-fun <init>/-788057745 (var2020) void)
(declare-fun toString/-980713082 (var2020) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var706) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3292 String) void)
(declare-const null-var1986 var1986)
(declare-const null-Int Int)
(declare-const null-var706 var706)
(declare-const null-var266 var266)
(declare-const var3870-err var3292)
(declare-const var2126 var1986) ; Statement: r4 := @this: com.mysql.cj.log.StandardLogger 
(assert (not (= var2126 null-var1986)))
(declare-const var3660 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3660 null-Int)))
(declare-const var1552 var706) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1552 null-var706)))
(declare-const var3410 var266) ; Statement: r5 := @parameter2: java.lang.Throwable 
(assert (not (= var3410 null-var266)))
(define-const var274 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var274)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var274!1 String)
(assert (= var274!1 ""))
(define-const var3626 var2020 var2020-init) ; Statement: $r1 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var3626)) ; Statement: specialinvoke $r1.<java.util.Date: void <init>()>() 

(declare-const var3626!1 var2020)
(assert true)
(define-const var3171 String (toString/-980713082 var3626!1)) ; Statement: $r2 = virtualinvoke $r1.<java.util.Date: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var274!1 var3171)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var274!2 String)
(assert (= var274!2 (str.++ var274!1 var3171)))
(assert true)
;(assert (append/672562846 var274!2 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var274!3 String)
(assert (= var274!3 (str.++ var274!2 " ")))
 ; Statement: tableswitch(i0) {     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FATAL: ");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ERROR: ");     case 2: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("WARN: ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("INFO: ");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DEBUG: ");     case 5: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TRACE: ");     default: goto $z1 = r3 instanceof com.mysql.cj.log.ProfilerEvent; } 
(assert (and (not (= var3660 5)) (and (not (= var3660 4)) (and (not (= var3660 3)) (and (not (= var3660 2)) (and (not (= var3660 1)) (and (not (= var3660 0)) true))))))) ; Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional      
(define-const var969 Bool false) ; Statement: $z1 = r3 instanceof com.mysql.cj.log.ProfilerEvent 
 ; Statement: if $z1 == 0 goto $z0 = r4.<com.mysql.cj.log.StandardLogger: boolean logLocationInfo> 
(assert (not (= (ite var969 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var2949 String (toString/-522406933 var1552)) ; Statement: $r12 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var274!3 var2949)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var274!4 String)
(assert (= var274!4 (str.++ var274!3 var2949)))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3410 null-var266)) ; Cond: r5 == null 
(assert true)
(define-const var203 String (toString/-2075883882 var274!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1183 var3292 var3870-err) ; Statement: $r6 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var1183 var203)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var1183!1 var3292)
(declare-const var203!1 String)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2020-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), toString/-980713082=([java.util.Date], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1986=com.mysql.cj.log.StandardLogger, var2126=r4, var3660=i0, var706=java.lang.Object, var1552=r3, var266=java.lang.Throwable, var3410=r5, var274=$r0, var2020=java.util.Date, var3626=$r1, var3171=$r2, var969=$z1, var2949=$r12, var203=$r8, var3292=java.io.PrintStream, var3870=java.lang.System, var1183=$r6}
; {com.mysql.cj.log.StandardLogger=var1986, r4=var2126, i0=var3660, java.lang.Object=var706, r3=var1552, java.lang.Throwable=var266, r5=var3410, $r0=var274, java.util.Date=var2020, $r1=var3626, $r2=var3171, $z1=var969, $r12=var2949, $r8=var203, java.io.PrintStream=var3292, java.lang.System=var3870, $r6=var1183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.util.Date: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.mysql.cj.log.StandardLogger;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.Object;	r5 := @parameter2: java.lang.Throwable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.util.Date;	specialinvoke $r1.<java.util.Date: void <init>()>();	$r2 = virtualinvoke $r1.<java.util.Date: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	tableswitch(i0) {     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FATAL: ");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ERROR: ");     case 2: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("WARN: ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("INFO: ");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DEBUG: ");     case 5: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TRACE: ");     default: goto $z1 = r3 instanceof com.mysql.cj.log.ProfilerEvent; };	$z1 = r3 instanceof com.mysql.cj.log.ProfilerEvent;	if $z1 == 0 goto $z0 = r4.<com.mysql.cj.log.StandardLogger: boolean logLocationInfo>;	$r12 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	goto [?= (branch)];	if r5 == null goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r8);	return $r8
;block_num 5