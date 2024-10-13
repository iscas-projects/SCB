(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun arr-var3960-init () (Array Int var3960))
(declare-fun Int_valueOf/-1256543613 (Int) Int)
(declare-fun cast-from-Int-to-var3960 (Int) var3960)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-String-to-var3960 (String) var3960)
(declare-fun String_format/1339386452 (String (Array Int var3960)) String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3960__ (Array Int var3960))
(declare-const var1319 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1319 null-__Array__Int__Int__)))
(declare-const var3838 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3838 null-Int)))
(declare-const var1980 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1980 null-Int)))
(declare-const var2367 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2367 null-Int)))
(declare-const var1206 Int) ; Statement: b2 := @parameter4: byte 
(assert (not (= var1206 null-Int)))
(define-const var2318 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var2318 var1319 var3838 var1980)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int)>(r1, i0, i1) 

(declare-const var2318!1 String)
(declare-const var1319!1 (Array Int Int))
(declare-const var3838!1 Int)
(declare-const var1980!1 Int)
(assert true)
(define-const var3738 String (replaceAll/1692887130 var2318!1 "\u0000" "{NUL}")) ; Statement: r7 = virtualinvoke $r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\u0000", "{NUL}") 
(assert (= (replaceAll/1692887130 var2318!1 "\u0000" "{NUL}") (str.replace_re_all var2318!1 (str.to_re "\u{005c}u{0000}") "{NUL}")))
(define-const var3259 (Array Int var3960) arr-var3960-init) ; Statement: $r2 = newarray (java.lang.Object)[4] 
(define-const var853 Int (Int_valueOf/-1256543613 var1206)) ; Statement: $r3 = staticinvoke <java.lang.Byte: java.lang.Byte valueOf(byte)>(b2) 
(declare-const var3259!1 (Array Int var3960))
(assert (not (= var3259!1 null-__Array__Int__var3960__)))
(assert (= (select var3259!1 0) (cast-from-Int-to-var3960 var853))) ; Statement: $r2[0] = $r3 
(define-const var2745 Int (- var2367 var3838!1)) ; Statement: $i4 = i3 - i0 
(define-const var2208 Int (Int_valueOf/-1371140006 var2745)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4) 
(declare-const var3259!2 (Array Int var3960))
(assert (not (= var3259!2 null-__Array__Int__var3960__)))
(assert (= (select var3259!2 1) (cast-from-Int-to-var3960 var2208))) ; Statement: $r2[1] = $r4 
(declare-const var3259!3 (Array Int var3960))
(assert (not (= var3259!3 null-__Array__Int__var3960__)))
(assert (= (select var3259!3 2) (cast-from-String-to-var3960 var3738))) ; Statement: $r2[2] = r7 
(define-const var910 Int (Int_valueOf/-1371140006 var1980!1)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3259!4 (Array Int var3960))
(assert (not (= var3259!4 null-__Array__Int__var3960__)))
(assert (= (select var3259!4 3) (cast-from-Int-to-var3960 var910))) ; Statement: $r2[3] = $r5 
(define-const var3492 String (String_format/1339386452 "Invalid byte %s at offset %d in \u0027%s\u0027 len=%d" var3259!4)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid byte %s at offset %d in \'%s\' len=%d", $r2) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), arr-var3960-init=([], java.lang.Object[]), Int_valueOf/-1256543613=([byte], java.lang.Byte), cast-from-Int-to-var3960=([java.lang.Byte], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-String-to-var3960=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1319=r1, var3838=i0, var1980=i1, var2367=i3, var1206=b2, var2318=$r0, var3738=r7, var3960=java.lang.Object, var3259=$r2, var853=$r3, var2745=$i4, var2208=$r4, var910=$r5, var3492=$r6}
; {r1=var1319, i0=var3838, i1=var1980, i3=var2367, b2=var1206, $r0=var2318, r7=var3738, java.lang.Object=var3960, $r2=var3259, $r3=var853, $i4=var2745, $r4=var2208, $r5=var910, $r6=var3492}
;seq <java.lang.String: void <init>(byte[],int,int)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	i3 := @parameter3: int;	b2 := @parameter4: byte;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int)>(r1, i0, i1);	r7 = virtualinvoke $r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\u0000", "{NUL}");	$r2 = newarray (java.lang.Object)[4];	$r3 = staticinvoke <java.lang.Byte: java.lang.Byte valueOf(byte)>(b2);	$r2[0] = $r3;	$i4 = i3 - i0;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4);	$r2[1] = $r4;	$r2[2] = r7;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r2[3] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid byte %s at offset %d in \'%s\' len=%d", $r2);	return $r6
;block_num 1