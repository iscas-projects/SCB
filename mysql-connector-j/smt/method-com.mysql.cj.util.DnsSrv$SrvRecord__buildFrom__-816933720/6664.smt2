(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2142 0)
(declare-sort var3256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-fun var3256-init () var3256)
(declare-fun <init>/-1819493299 (var3256 Int Int Int String) void)
(declare-const null-String String)
(declare-const var3347 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3347 null-String)))
(assert true)
(define-const var3796 (Array Int String) (split/-636890950 var3347 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3347 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var904 Int (getLength-Arr-String-1 var3796)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 != 4 goto return null 
(assert (not (not (= var904 4)))) ; Negate: Cond: $i0 != 4  
(define-const var3765 String (select var3796 0)) ; Statement: $r2 = r1[0] 
(define-const var2386 Int (Int_parseInt/1370970945 var3765)) ; Statement: i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2) 
(define-const var426 String (select var3796 1)) ; Statement: $r3 = r1[1] 
(define-const var3616 Int (Int_parseInt/1370970945 var426)) ; Statement: i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var3133 String (select var3796 2)) ; Statement: $r4 = r1[2] 
(define-const var2812 Int (Int_parseInt/1370970945 var3133)) ; Statement: i3 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var31 String (select var3796 3)) ; Statement: $r5 = r1[3] 
(assert true)
(define-const var1764 String (replaceFirst/750800361 var31 "\u005c.$" "")) ; Statement: r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\.$", "") 
(assert (= (replaceFirst/750800361 var31 "\u005c.$" "") (str.replace_re var31 (str.to_re ".$") "")))
(define-const var1670 var3256 var3256-init) ; Statement: $r7 = new com.mysql.cj.util.DnsSrv$SrvRecord 
(assert true)
;(assert (<init>/-1819493299 var1670 var2386 var3616 var2812 var1764)) ; Statement: specialinvoke $r7.<com.mysql.cj.util.DnsSrv$SrvRecord: void <init>(int,int,int,java.lang.String)>(i1, i2, i3, r6) 

(declare-const var1670!1 var3256)
(declare-const var2386!1 Int)
(declare-const var3616!1 Int)
(declare-const var2812!1 Int)
(declare-const var1764!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), Int_parseInt/1370970945=([java.lang.String], int), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var3256-init=([], com.mysql.cj.util.DnsSrv$SrvRecord), <init>/-1819493299=([com.mysql.cj.util.DnsSrv$SrvRecord, int, int, int, java.lang.String], void)}
; {var3347=r0, var2142=null_type, var3796=r1, var904=$i0, var3765=$r2, var2386=i1, var426=$r3, var3616=i2, var3133=$r4, var2812=i3, var31=$r5, var1764=r6, var3256=com.mysql.cj.util.DnsSrv$SrvRecord, var1670=$r7}
; {r0=var3347, null_type=var2142, r1=var3796, $i0=var904, $r2=var3765, i1=var2386, $r3=var426, i2=var3616, $r4=var3133, i3=var2812, $r5=var31, r6=var1764, com.mysql.cj.util.DnsSrv$SrvRecord=var3256, $r7=var1670}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	if $i0 != 4 goto return null;	$r2 = r1[0];	i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	$r3 = r1[1];	i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	$r4 = r1[2];	i3 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	$r5 = r1[3];	r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\.$", "");	$r7 = new com.mysql.cj.util.DnsSrv$SrvRecord;	specialinvoke $r7.<com.mysql.cj.util.DnsSrv$SrvRecord: void <init>(int,int,int,java.lang.String)>(i1, i2, i3, r6);	return $r7
;block_num 2