(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1461 0)
(declare-sort var2399 0)
(declare-sort var3104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2399_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun var3104-init () var3104)
(declare-fun <init>/481518073 (var3104 String Int) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1760 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1760 null-String)))
(declare-const var1353 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1353 null-Int)))
(define-const var2986 Bool (var2399_isBlank/-1569658263 (cast-from-String-to-String var1760))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r2) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":") 
(assert (= (ite var2986 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1957 Int (indexOf/-1209756239 var1760 ":")) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":") 
(define-const var2186 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i2 == $i5 goto r3 = r2 
(assert (not (= var1957 var2186))) ; Negate: Cond: $i2 == $i5  
(assert (and true (and (>= 0 0) (>= (str.len var1760) var1957) (>= var1957 0))))
(define-const var3690 String (substring/-1240304868 var1760 0 var1957)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(define-const var98 Int (+ var1957 1)) ; Statement: $i1 = $i2 + 1 
(assert (not (and true (and (>= var98 0) (>= (str.len var1760) var98)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2399_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), var3104-init=([], java.net.InetSocketAddress), <init>/481518073=([java.net.InetSocketAddress, java.lang.String, int], void)}
; {var1760=r2, var1461=null_type, var1353=i0, var2399=cn.hutool.core.text.CharSequenceUtil, var2986=$z0, var1957=$i2, var2186=$i5, var3690=r3, var98=$i1, var833=$r1, var2703=i3, var3104=java.net.InetSocketAddress, var3216=$r4}
; {r2=var1760, null_type=var1461, i0=var1353, cn.hutool.core.text.CharSequenceUtil=var2399, $z0=var2986, $i2=var1957, $i5=var2186, r3=var3690, $i1=var98, $r1=var833, i3=var2703, java.net.InetSocketAddress=var3104, $r4=var3216}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r2);	if $z0 == 0 goto $i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":");	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":");	$i5 = (int) -1;	if $i2 == $i5 goto r3 = r2;	r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$i1 = $i2 + 1;	$r1 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	i3 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r1);	goto [?= $r4 = new java.net.InetSocketAddress];	$r4 = new java.net.InetSocketAddress;	specialinvoke $r4.<java.net.InetSocketAddress: void <init>(java.lang.String,int)>(r3, i3);	return $r4
;block_num 4