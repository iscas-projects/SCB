(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1338 0)
(declare-sort var1053 0)
(declare-sort var693 0)
(declare-sort var3394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbolTable/302871663 (var1338) var1053)
(declare-fun getName/2055995811 (var1053 Int) String)
(declare-fun var3394-init () var3394)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3394 String) void)
(declare-const null-var1338 var1338)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2362 var1338) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONBDump 
(assert (not (= var2362 null-var1338)))
(declare-const var3547 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3547 null-Int)))
 ; Statement: if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols> 
(assert (not (>= var3547 0))) ; Negate: Cond: i0 >= 0  
(define-const var1067 var1053 (symbolTable/302871663 var2362)) ; Statement: $r9 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.SymbolTable symbolTable> 
(define-const var3206 Int (- var3547)) ; Statement: $i1 = neg i0 
(assert true)
(define-const var3735 String (getName/2055995811 var1067 var3206)) ; Statement: r10 = virtualinvoke $r9.<com.alibaba.fastjson2.SymbolTable: java.lang.String getName(int)>($i1) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r10 != null goto return r10 
(assert (not (not (= var3735 null-String)))) ; Negate: Cond: r10 != null  
(define-const var554 var3394 var3394-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var939 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var939)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var939!1 String)
(assert (= var939!1 ""))
(assert true)
(define-const var3621 String (append/672562846 var939!1 "symbol not found : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("symbol not found : ") 
(declare-const var939!2 String)
(assert (= var939!2 (str.++ var939!1 "symbol not found : ")))
(assert true)
(define-const var1215 String (append/-1001720160 var3621 var3547)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3621!1 String)
(assert (str.prefixof var3621 var3621!1))
(assert true)
(define-const var1254 String (toString/-2075883882 var1215)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var554 var1254)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var554!1 var3394)
(declare-const var1254!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {symbolTable/302871663=([com.alibaba.fastjson2.JSONBDump], com.alibaba.fastjson2.SymbolTable), getName/2055995811=([com.alibaba.fastjson2.SymbolTable, int], java.lang.String), var3394-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1338=com.alibaba.fastjson2.JSONBDump, var2362=r0, var3547=i0, var1053=com.alibaba.fastjson2.SymbolTable, var1067=$r9, var3206=$i1, var3735=r10, var693=null_type, var3394=com.alibaba.fastjson2.JSONException, var554=$r4, var939=$r5, var3621=$r6, var1215=$r7, var1254=$r8}
; {com.alibaba.fastjson2.JSONBDump=var1338, r0=var2362, i0=var3547, com.alibaba.fastjson2.SymbolTable=var1053, $r9=var1067, $i1=var3206, r10=var3735, null_type=var693, com.alibaba.fastjson2.JSONException=var3394, $r4=var554, $r5=var939, $r6=var3621, $r7=var1215, $r8=var1254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONBDump;	i0 := @parameter0: int;	if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols>;	$r9 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.SymbolTable symbolTable>;	$i1 = neg i0;	r10 = virtualinvoke $r9.<com.alibaba.fastjson2.SymbolTable: java.lang.String getName(int)>($i1);	goto [?= (branch)];	if r10 != null goto return r10;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("symbol not found : ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 4