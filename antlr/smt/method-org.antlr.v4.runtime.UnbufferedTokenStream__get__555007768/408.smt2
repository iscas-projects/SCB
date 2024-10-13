(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2230 0)
(declare-sort var2472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBufferStartIndex/-1061114896 (var2230) Int)
(declare-fun var2472-init () var2472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun n/-1211218298 (var2230) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2472 String) void)
(declare-const null-var2230 var2230)
(declare-const null-Int Int)
(declare-const var3458 var2230) ; Statement: r0 := @this: org.antlr.v4.runtime.UnbufferedTokenStream 
(assert (not (= var3458 null-var2230)))
(declare-const var1719 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1719 null-Int)))
(assert true)
(define-const var569 Int (getBufferStartIndex/-1061114896 var3458)) ; Statement: i0 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>() 
 ; Statement: if i1 < i0 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (< var1719 var569)) ; Cond: i1 < i0 
(define-const var1812 var2472 var2472-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var466 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var466)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var466!1 String)
(assert (= var466!1 ""))
(assert true)
(define-const var1487 String (append/672562846 var466!1 "get(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get(") 
(declare-const var466!2 String)
(assert (= var466!2 (str.++ var466!1 "get(")))
(assert true)
(define-const var2352 String (append/-1001720160 var1487 var1719)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1487!1 String)
(assert (str.prefixof var1487 var1487!1))
(assert true)
(define-const var288 String (append/672562846 var2352 ") outside buffer: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") outside buffer: ") 
(declare-const var2352!1 String)
(assert (= var2352!1 (str.++ var2352 ") outside buffer: ")))
(assert true)
(define-const var1329 String (append/-1001720160 var288 var569)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var288!1 String)
(assert (str.prefixof var288 var288!1))
(assert true)
(define-const var2317 String (append/672562846 var1329 "..")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var1329!1 String)
(assert (= var1329!1 (str.++ var1329 "..")))
(define-const var3161 Int (n/-1211218298 var3458)) ; Statement: $i2 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int n> 
(define-const var1704 Int (+ var569 var3161)) ; Statement: $i3 = i0 + $i2 
(assert true)
(define-const var349 String (append/-1001720160 var2317 var1704)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2317!1 String)
(assert (str.prefixof var2317 var2317!1))
(assert true)
(define-const var3316 String (toString/-2075883882 var349)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var1812 var3316)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9) 

(declare-const var1812!1 var2472)
(declare-const var3316!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getBufferStartIndex/-1061114896=([org.antlr.v4.runtime.UnbufferedTokenStream], int), var2472-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), n/-1211218298=([org.antlr.v4.runtime.UnbufferedTokenStream], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2230=org.antlr.v4.runtime.UnbufferedTokenStream, var3458=r0, var1719=i1, var569=i0, var2472=java.lang.IndexOutOfBoundsException, var1812=$r1, var466=$r2, var1487=$r3, var2352=$r4, var288=$r5, var1329=$r6, var2317=$r7, var3161=$i2, var1704=$i3, var349=$r8, var3316=$r9}
; {org.antlr.v4.runtime.UnbufferedTokenStream=var2230, r0=var3458, i1=var1719, i0=var569, java.lang.IndexOutOfBoundsException=var2472, $r1=var1812, $r2=var466, $r3=var1487, $r4=var2352, $r5=var288, $r6=var1329, $r7=var2317, $i2=var3161, $i3=var1704, $r8=var349, $r9=var3316}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.UnbufferedTokenStream;	i1 := @parameter0: int;	i0 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>();	if i1 < i0 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") outside buffer: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$i2 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int n>;	$i3 = i0 + $i2;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9);	throw $r1
;block_num 2