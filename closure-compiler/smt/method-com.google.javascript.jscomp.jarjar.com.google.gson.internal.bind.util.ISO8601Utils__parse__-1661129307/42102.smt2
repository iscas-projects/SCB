(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3999 0)
(declare-sort var3301 0)
(declare-sort var2328 0)
(declare-sort var220 0)
(declare-sort var2784 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2328-to-var220 (var2328) var220)
(declare-fun getMessage/849299655 (var2784) String)
(declare-fun cast-from-var220-to-var2784 (var220) var2784)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2775-init () var2775)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getIndex/-2136393185 (var3301) Int)
(declare-fun <init>/1495607482 (var2775 String Int) void)
(declare-fun initCause/2003336360 (var2784 var2784) var2784)
(declare-fun cast-from-var2775-to-var2784 (var2775) var2784)
(declare-const null-String String)
(declare-const null-var3301 var3301)
(declare-const null-var2328 var2328)
(declare-const var2222 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2222 null-String)))
(declare-const var2119 var3301) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2119 null-var3301)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2112 var2328) ; Statement: $r32 := @caughtexception 
(assert (not (= var2112 null-var2328)))
(define-const var3450 var220 (cast-from-var2328-to-var220 var2112)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var2222 null-String)))) ; Negate: Cond: r1 != null  
(define-const var2654 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var2244 String var2654) ; Statement: r51 = $r50 
(assert true)
(define-const var279 String (getMessage/849299655 (cast-from-var220-to-var2784 var3450))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var2903 String var279) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var279 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var179 Bool (isEmpty/-1285796103 var279)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var179 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1837 var2775 var2775-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3064 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3064)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3064!1 String)
(assert (= var3064!1 ""))
(assert true)
(define-const var2857 String (append/672562846 var3064!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3064!2 String)
(assert (= var3064!2 (str.++ var3064!1 "Failed to parse date [")))
(assert true)
(define-const var1264 String (append/672562846 var2857 var2244)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2857!1 String)
(assert (= var2857!1 (str.++ var2857 var2244)))
(assert true)
(define-const var3376 String (append/672562846 var1264 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var1264!1 String)
(assert (= var1264!1 (str.++ var1264 "]: ")))
(assert true)
(define-const var3169 String (append/672562846 var3376 var2903)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var3376!1 String)
(assert (= var3376!1 (str.++ var3376 var2903)))
(assert true)
(define-const var2223 String (toString/-2075883882 var3169)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2890 Int (getIndex/-2136393185 var2119)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var1837 var2223 var2890)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var1837!1 var2775)
(declare-const var2223!1 String)
(declare-const var2890!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2775-to-var2784 var1837!1) (cast-from-var220-to-var2784 var3450))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var1837!2 var2775)
(declare-const var3450!1 var220)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2328-to-var220=([java.lang.IllegalArgumentException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var220-to-var2784=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var2775-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2775-to-var2784=([java.text.ParseException], java.lang.Throwable)}
; {var2222=r1, var3999=null_type, var3301=java.text.ParsePosition, var2119=r0, var2328=java.lang.IllegalArgumentException, var2112=$r32, var220=java.lang.RuntimeException, var3450=r49, var2654=$r50, var2244=r51, var2784=java.lang.Throwable, var279=$r43, var2903=r52, var179=$z9, var2775=java.text.ParseException, var1837=$r72, var3064=$r71, var2857=$r55, var1264=$r56, var3376=$r57, var3169=$r58, var2223=$r59, var2890=$i31}
; {r1=var2222, null_type=var3999, java.text.ParsePosition=var3301, r0=var2119, java.lang.IllegalArgumentException=var2328, $r32=var2112, java.lang.RuntimeException=var220, r49=var3450, $r50=var2654, r51=var2244, java.lang.Throwable=var2784, $r43=var279, r52=var2903, $z9=var179, java.text.ParseException=var2775, $r72=var1837, $r71=var3064, $r55=var2857, $r56=var1264, $r57=var3376, $r58=var3169, $r59=var2223, $i31=var2890}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7