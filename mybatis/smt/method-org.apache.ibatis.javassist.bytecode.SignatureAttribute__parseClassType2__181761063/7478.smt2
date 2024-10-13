(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var769 0)
(declare-sort var1706 0)
(declare-sort var1001 0)
(declare-sort var2925 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var1706) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var511_parseTypeArgs/-674063830 (String var1706) (Array Int var2925))
(declare-fun var1001_make/-921465979 (String Int Int (Array Int var2925) var1001) var1001)
(declare-fun var511_parseClassType2/181761063 (String var1706 var1001) var1001)
(declare-const null-String String)
(declare-const null-var1706 var1706)
(declare-const null-var1001 var1001)
(declare-const var898 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var898 null-String)))
(declare-const var872 var1706) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var872 null-var1706)))
(declare-const var3071 var1001) ; Statement: r2 := @parameter2: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType 
(assert (not (= var3071 null-var1001)))
(define-const var2266 Int (position/442744389 var872)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var2364 Int (+ var2266 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var872!1 var1706)
(assert (not (= var872!1 null-var1706)))
(assert (= (position/442744389 var872!1) var2364)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1 
(assert true) ; Non Conditional
(define-const var1872 Int (position/442744389 var872!1)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var2611 Int (+ var1872 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var872!2 var1706)
(assert (not (= var872!2 null-var1706)))
(assert (= (position/442744389 var872!2) var2611)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i3 
(assert (and true (and (> (str.len var898) var1872) (<= 0 var1872))))
(define-const var691 Int (charAt/698050440 var898 var1872)) ; Statement: $c8 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i2) 
(define-const var1398 Int var691) ; Statement: c9 = $c8 
(define-const var3483 Int (cast-from-Int-to-Int var691)) ; Statement: $i12 = (int) $c8 
 ; Statement: if $i12 == 36 goto $i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (= var3483 36)) ; Cond: $i12 == 36 
(define-const var2238 Int (position/442744389 var872!2)) ; Statement: $i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var3324 Int (- var2238 1)) ; Statement: $i11 = $i10 - 1 
(define-const var2411 Int (cast-from-Int-to-Int var691)) ; Statement: $i15 = (int) $c8 
 ; Statement: if $i15 != 60 goto r5 = null 
(assert (not (not (= var2411 60)))) ; Negate: Cond: $i15 != 60  
(define-const var2090 (Array Int var2925) (var511_parseTypeArgs/-674063830 var898 var872!2)) ; Statement: r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] parseTypeArgs(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0) 
(define-const var46 Int (position/442744389 var872!2)) ; Statement: $i6 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var1086 Int (+ var46 1)) ; Statement: $i7 = $i6 + 1 
(declare-const var872!3 var1706)
(assert (not (= var872!3 null-var1706)))
(assert (= (position/442744389 var872!3) var1086)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i7 
(assert (and true (and (> (str.len var898) var46) (<= 0 var46))))
(define-const var1398!1 Int (charAt/698050440 var898 var46)) ; Statement: c9 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i6) 
 ; Statement: goto [?= $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType make(java.lang.String,int,int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, $i1, $i11, r5, r2)] 
(assert true) ; Non Conditional
(define-const var1191 var1001 (var1001_make/-921465979 var898 var2364 var3324 var2090 var3071)) ; Statement: $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType make(java.lang.String,int,int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, $i1, $i11, r5, r2) 
(define-const var1096 Int (cast-from-Int-to-Int var1398!1)) ; Statement: $i16 = (int) c9 
 ; Statement: if $i16 == 36 goto $i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (= var1096 36)) ; Cond: $i16 == 36 
(define-const var412 Int (position/442744389 var872!3)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var704 Int (- var412 1)) ; Statement: $i5 = $i4 - 1 
(declare-const var872!4 var1706)
(assert (not (= var872!4 null-var1706)))
(assert (= (position/442744389 var872!4) var704)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i5 
(define-const var294 var1001 (var511_parseClassType2/181761063 var898 var872!4 var1191)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, $r4) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var511_parseTypeArgs/-674063830=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[]), var1001_make/-921465979=([java.lang.String, int, int, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType), var511_parseClassType2/181761063=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)}
; {var898=r1, var769=null_type, var1706=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var872=r0, var1001=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var3071=r2, var2266=$i0, var2364=$i1, var1872=$i2, var2611=$i3, var691=$c8, var1398=c9, var3483=$i12, var2238=$i10, var3324=$i11, var2411=$i15, var2925=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument, var511=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var2090=r5, var46=$i6, var1086=$i7, var1191=$r4, var1096=$i16, var412=$i4, var704=$i5, var294=$r3}
; {r1=var898, null_type=var769, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var1706, r0=var872, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var1001, r2=var3071, $i0=var2266, $i1=var2364, $i2=var1872, $i3=var2611, $c8=var691, c9=var1398, $i12=var3483, $i10=var2238, $i11=var3324, $i15=var2411, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument=var2925, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var511, r5=var2090, $i6=var46, $i7=var1086, $r4=var1191, $i16=var1096, $i4=var412, $i5=var704, $r3=var294}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	r2 := @parameter2: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i1 = $i0 + 1;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1;	$i2 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i3 = $i2 + 1;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i3;	$c8 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i2);	c9 = $c8;	$i12 = (int) $c8;	if $i12 == 36 goto $i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i11 = $i10 - 1;	$i15 = (int) $c8;	if $i15 != 60 goto r5 = null;	r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] parseTypeArgs(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);	$i6 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i7 = $i6 + 1;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i7;	c9 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i6);	goto [?= $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType make(java.lang.String,int,int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, $i1, $i11, r5, r2)];	$r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType make(java.lang.String,int,int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, $i1, $i11, r5, r2);	$i16 = (int) c9;	if $i16 == 36 goto $i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i5 = $i4 - 1;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i5;	$r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, $r4);	return $r3
;block_num 6