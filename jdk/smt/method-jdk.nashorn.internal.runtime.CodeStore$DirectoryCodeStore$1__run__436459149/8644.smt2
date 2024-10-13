(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1660 0)
(declare-sort var3687 0)
(declare-sort var705 0)
(declare-sort var250 0)
(declare-sort var2464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3687-init () var3687)
(declare-fun val$path/494192931 (var1660) String)
(declare-fun val$env/494192931 (var1660) var705)
(declare-fun var250_access$000/-2083695781 (var705) String)
(declare-fun <init>/1056156189 (var3687 String String) void)
(declare-fun getAbsoluteFile/-33355006 (var3687) var3687)
(declare-fun val$readOnly/494192931 (var1660) Bool)
(declare-fun exists/1072868559 (var3687) Bool)
(declare-fun var2464-init () var2464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/-1385219261 (var3687) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2464 String) void)
(declare-const null-var1660 var1660)
(declare-const var1021 var1660) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1 
(assert (not (= var1021 null-var1660)))
(define-const var502 var3687 var3687-init) ; Statement: $r0 = new java.io.File 
(define-const var2336 String (val$path/494192931 var1021)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1: java.lang.String val$path> 
(define-const var673 var705 (val$env/494192931 var1021)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1: jdk.nashorn.internal.runtime.ScriptEnvironment val$env> 
(define-const var801 String (var250_access$000/-2083695781 var673)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore: java.lang.String access$000(jdk.nashorn.internal.runtime.ScriptEnvironment)>($r2) 
(assert true)
;(assert (<init>/1056156189 var502 var2336 var801)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r3, $r4) 

(declare-const var502!1 var3687)
(declare-const var2336!1 String)
(declare-const var801!1 String)
(assert true)
(define-const var1149 var3687 (getAbsoluteFile/-33355006 var502!1)) ; Statement: r5 = virtualinvoke $r0.<java.io.File: java.io.File getAbsoluteFile()>() 
(define-const var2826 Bool (val$readOnly/494192931 var1021)) ; Statement: $z0 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1: boolean val$readOnly> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.io.File: boolean exists()>() 
(assert (not (= (ite var2826 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var366 Bool (exists/1072868559 var1149)) ; Statement: $z6 = virtualinvoke r5.<java.io.File: boolean exists()>() 
 ; Statement: if $z6 == 0 goto $r24 = new java.io.IOException 
(assert (= (ite var366 1 0) 0)) ; Cond: $z6 == 0 
(define-const var143 var2464 var2464-init) ; Statement: $r24 = new java.io.IOException 
(define-const var1837 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1837)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1837!1 String)
(assert (= var1837!1 ""))
(assert true)
(define-const var3028 String (append/672562846 var1837!1 "Not a directory: ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a directory: ") 
(declare-const var1837!2 String)
(assert (= var1837!2 (str.++ var1837!1 "Not a directory: ")))
(assert true)
(define-const var1115 String (getPath/-1385219261 var1149)) ; Statement: $r26 = virtualinvoke r5.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var271 String (append/672562846 var3028 var1115)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3028!1 String)
(assert (= var3028!1 (str.++ var3028 var1115)))
(assert true)
(define-const var1224 String (toString/-2075883882 var271)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var143 var1224)) ; Statement: specialinvoke $r24.<java.io.IOException: void <init>(java.lang.String)>($r29) 

(declare-const var143!1 var2464)
(declare-const var1224!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var3687-init=([], java.io.File), val$path/494192931=([jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1], java.lang.String), val$env/494192931=([jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1], jdk.nashorn.internal.runtime.ScriptEnvironment), var250_access$000/-2083695781=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.lang.String), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), getAbsoluteFile/-33355006=([java.io.File], java.io.File), val$readOnly/494192931=([jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1], boolean), exists/1072868559=([java.io.File], boolean), var2464-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/-1385219261=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1660=jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1, var1021=r1, var3687=java.io.File, var502=$r0, var2336=$r3, var705=jdk.nashorn.internal.runtime.ScriptEnvironment, var673=$r2, var250=jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore, var801=$r4, var1149=r5, var2826=$z0, var366=$z6, var2464=java.io.IOException, var143=$r24, var1837=$r25, var3028=$r27, var1115=$r26, var271=$r28, var1224=$r29}
; {jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1=var1660, r1=var1021, java.io.File=var3687, $r0=var502, $r3=var2336, jdk.nashorn.internal.runtime.ScriptEnvironment=var705, $r2=var673, jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore=var250, $r4=var801, r5=var1149, $z0=var2826, $z6=var366, java.io.IOException=var2464, $r24=var143, $r25=var1837, $r27=var3028, $r26=var1115, $r28=var271, $r29=var1224}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1;	$r0 = new java.io.File;	$r3 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1: java.lang.String val$path>;	$r2 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1: jdk.nashorn.internal.runtime.ScriptEnvironment val$env>;	$r4 = staticinvoke <jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore: java.lang.String access$000(jdk.nashorn.internal.runtime.ScriptEnvironment)>($r2);	specialinvoke $r0.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r3, $r4);	r5 = virtualinvoke $r0.<java.io.File: java.io.File getAbsoluteFile()>();	$z0 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore$1: boolean val$readOnly>;	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.io.File: boolean exists()>();	$z6 = virtualinvoke r5.<java.io.File: boolean exists()>();	if $z6 == 0 goto $r24 = new java.io.IOException;	$r24 = new java.io.IOException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a directory: ");	$r26 = virtualinvoke r5.<java.io.File: java.lang.String getPath()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.io.IOException: void <init>(java.lang.String)>($r29);	throw $r24
;block_num 3