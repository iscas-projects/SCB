(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1496 0)
(declare-sort var1262 0)
(declare-sort var1957 0)
(declare-sort var2676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2676) void)
(declare-fun cast-from-var1496-to-var2676 (var1496) var2676)
(declare-fun pos/1080335917 (var1496) Int)
(declare-fun source/1080335917 (var1496) String)
(declare-fun global/1080335917 (var1496) var1957)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/1080335917 (var1496) Int)
(declare-fun dualFields/1080335917 (var1496) Bool)
(declare-const null-var1496 var1496)
(declare-const null-String String)
(declare-const null-var1957 var1957)
(declare-const null-Bool Bool)
(declare-const var394 var1496) ; Statement: r0 := @this: jdk.nashorn.internal.parser.JSONParser 
(assert (not (= var394 null-var1496)))
(declare-const var2765 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2765 null-String)))
(declare-const var2874 var1957) ; Statement: r2 := @parameter1: jdk.nashorn.internal.objects.Global 
(assert (not (= var2874 null-var1957)))
(declare-const var1185 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1185 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1496-to-var2676 var394))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var394!1 var1496)
(declare-const var394!2 var1496)
(assert (not (= var394!2 null-var1496)))
(assert (= (pos/1080335917 var394!2) 0)) ; Statement: r0.<jdk.nashorn.internal.parser.JSONParser: int pos> = 0 
(declare-const var394!3 var1496)
(assert (not (= var394!3 null-var1496)))
(assert (= (source/1080335917 var394!3) var2765)) ; Statement: r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source> = r1 
(declare-const var394!4 var1496)
(assert (not (= var394!4 null-var1496)))
(assert (= (global/1080335917 var394!4) var2874)) ; Statement: r0.<jdk.nashorn.internal.parser.JSONParser: jdk.nashorn.internal.objects.Global global> = r2 
(assert true)
(define-const var3182 Int (length/-134980193 var2765)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var394!5 var1496)
(assert (not (= var394!5 null-var1496)))
(assert (= (length/1080335917 var394!5) var3182)) ; Statement: r0.<jdk.nashorn.internal.parser.JSONParser: int length> = $i0 
(declare-const var394!6 var1496)
(assert (not (= var394!6 null-var1496)))
(assert (= (dualFields/1080335917 var394!6) var1185)) ; Statement: r0.<jdk.nashorn.internal.parser.JSONParser: boolean dualFields> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1496-to-var2676=([jdk.nashorn.internal.parser.JSONParser], java.lang.Object), pos/1080335917=([jdk.nashorn.internal.parser.JSONParser], int), source/1080335917=([jdk.nashorn.internal.parser.JSONParser], java.lang.String), global/1080335917=([jdk.nashorn.internal.parser.JSONParser], jdk.nashorn.internal.objects.Global), length/-134980193=([java.lang.String], int), length/1080335917=([jdk.nashorn.internal.parser.JSONParser], int), dualFields/1080335917=([jdk.nashorn.internal.parser.JSONParser], boolean)}
; {var1496=jdk.nashorn.internal.parser.JSONParser, var394=r0, var2765=r1, var1262=null_type, var1957=jdk.nashorn.internal.objects.Global, var2874=r2, var1185=z0, var2676=java.lang.Object, var3182=$i0}
; {jdk.nashorn.internal.parser.JSONParser=var1496, r0=var394, r1=var2765, null_type=var1262, jdk.nashorn.internal.objects.Global=var1957, r2=var2874, z0=var1185, java.lang.Object=var2676, $i0=var3182}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.JSONParser;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: jdk.nashorn.internal.objects.Global;	z0 := @parameter2: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.nashorn.internal.parser.JSONParser: int pos> = 0;	r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source> = r1;	r0.<jdk.nashorn.internal.parser.JSONParser: jdk.nashorn.internal.objects.Global global> = r2;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<jdk.nashorn.internal.parser.JSONParser: int length> = $i0;	r0.<jdk.nashorn.internal.parser.JSONParser: boolean dualFields> = z0;	return
;block_num 1