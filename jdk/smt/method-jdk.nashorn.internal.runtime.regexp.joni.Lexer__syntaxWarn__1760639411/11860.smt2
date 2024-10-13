(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1483 0)
(declare-sort var232 0)
(declare-sort var1962 0)
(declare-sort var2180 0)
(declare-sort var738 0)
(declare-sort var3625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun env/-1120584316 (var1483) var1962)
(declare-fun reg/1554642894 (var1962) var2180)
(declare-fun warnings/-1115059521 (var2180) var738)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun chars/-2077772679 (var3625) (Array Int Int))
(declare-fun cast-from-var1483-to-var3625 (var1483) var3625)
(declare-fun getBegin/-794041898 (var3625) Int)
(declare-fun getEnd/120034532 (var3625) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var738_warn/1872442957 (var738 String) void)
(declare-const null-var1483 var1483)
(declare-const null-String String)
(declare-const var36 var1483) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Lexer 
(assert (not (= var36 null-var1483)))
(declare-const var3786 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3786 null-String)))
(define-const var1490 var1962 (env/-1120584316 var36)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment env> 
(define-const var3309 var2180 (reg/1554642894 var1490)) ; Statement: $r2 = $r1.<jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment: jdk.nashorn.internal.runtime.regexp.joni.Regex reg> 
(define-const var3952 var738 (warnings/-1115059521 var3309)) ; Statement: $r4 = $r2.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.WarnCallback warnings> 
(define-const var1647 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1647)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1647!1 String)
(assert (= var1647!1 ""))
(assert true)
(define-const var3877 String (append/672562846 var1647!1 var3786)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1647!2 String)
(assert (= var1647!2 (str.++ var1647!1 var3786)))
(assert true)
(define-const var2864 String (append/672562846 var3877 ": /")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": /") 
(declare-const var3877!1 String)
(assert (= var3877!1 (str.++ var3877 ": /")))
(define-const var2252 String String-init) ; Statement: $r7 = new java.lang.String 
(define-const var42 (Array Int Int) (chars/-2077772679 (cast-from-var1483-to-var3625 var36))) ; Statement: $r8 = r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: char[] chars> 
(assert true)
(define-const var489 Int (getBegin/-794041898 (cast-from-var1483-to-var3625 var36))) ; Statement: $i1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: int getBegin()>() 
(assert true)
(define-const var1686 Int (getEnd/120034532 (cast-from-var1483-to-var3625 var36))) ; Statement: $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: int getEnd()>() 
(assert true)
;(assert (<init>/-253222812 var2252 var42 var489 var1686)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(char[],int,int)>($r8, $i1, $i0) 

(declare-const var2252!1 String)
(declare-const var42!1 (Array Int Int))
(declare-const var489!1 Int)
(declare-const var1686!1 Int)
(assert true)
(define-const var2902 String (append/672562846 var2864 var2252!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2864!1 String)
(assert (= var2864!1 (str.++ var2864 var2252!1)))
(assert true)
(define-const var3737 String (append/672562846 var2902 "/")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var2902!1 String)
(assert (= var2902!1 (str.++ var2902 "/")))
(assert true)
(define-const var3280 String (toString/-2075883882 var3737)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var738_warn/1872442957 var3952 var3280)) ; Statement: interfaceinvoke $r4.<jdk.nashorn.internal.runtime.regexp.joni.WarnCallback: void warn(java.lang.String)>($r12) 

(declare-const var3952!1 var738)
(declare-const var3280!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {env/-1120584316=([jdk.nashorn.internal.runtime.regexp.joni.Lexer], jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment), reg/1554642894=([jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment], jdk.nashorn.internal.runtime.regexp.joni.Regex), warnings/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], jdk.nashorn.internal.runtime.regexp.joni.WarnCallback), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), chars/-2077772679=([jdk.nashorn.internal.runtime.regexp.joni.ScannerSupport], char[]), cast-from-var1483-to-var3625=([jdk.nashorn.internal.runtime.regexp.joni.Lexer], jdk.nashorn.internal.runtime.regexp.joni.ScannerSupport), getBegin/-794041898=([jdk.nashorn.internal.runtime.regexp.joni.ScannerSupport], int), getEnd/120034532=([jdk.nashorn.internal.runtime.regexp.joni.ScannerSupport], int), <init>/-253222812=([java.lang.String, char[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var738_warn/1872442957=([jdk.nashorn.internal.runtime.regexp.joni.WarnCallback, java.lang.String], void)}
; {var1483=jdk.nashorn.internal.runtime.regexp.joni.Lexer, var36=r0, var3786=r5, var232=null_type, var1962=jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment, var1490=$r1, var2180=jdk.nashorn.internal.runtime.regexp.joni.Regex, var3309=$r2, var738=jdk.nashorn.internal.runtime.regexp.joni.WarnCallback, var3952=$r4, var1647=$r3, var3877=$r6, var2864=$r9, var2252=$r7, var3625=jdk.nashorn.internal.runtime.regexp.joni.ScannerSupport, var42=$r8, var489=$i1, var1686=$i0, var2902=$r10, var3737=$r11, var3280=$r12}
; {jdk.nashorn.internal.runtime.regexp.joni.Lexer=var1483, r0=var36, r5=var3786, null_type=var232, jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment=var1962, $r1=var1490, jdk.nashorn.internal.runtime.regexp.joni.Regex=var2180, $r2=var3309, jdk.nashorn.internal.runtime.regexp.joni.WarnCallback=var738, $r4=var3952, $r3=var1647, $r6=var3877, $r9=var2864, $r7=var2252, jdk.nashorn.internal.runtime.regexp.joni.ScannerSupport=var3625, $r8=var42, $i1=var489, $i0=var1686, $r10=var2902, $r11=var3737, $r12=var3280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Lexer;	r5 := @parameter0: java.lang.String;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment env>;	$r2 = $r1.<jdk.nashorn.internal.runtime.regexp.joni.ScanEnvironment: jdk.nashorn.internal.runtime.regexp.joni.Regex reg>;	$r4 = $r2.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.WarnCallback warnings>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": /");	$r7 = new java.lang.String;	$r8 = r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: char[] chars>;	$i1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: int getBegin()>();	$i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Lexer: int getEnd()>();	specialinvoke $r7.<java.lang.String: void <init>(char[],int,int)>($r8, $i1, $i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r4.<jdk.nashorn.internal.runtime.regexp.joni.WarnCallback: void warn(java.lang.String)>($r12);	return
;block_num 1