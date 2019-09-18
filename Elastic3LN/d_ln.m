function d_ln(LNivel,Nivel,Xe,Ye,Ve);

 for j= 1:LNivel
  for k= 1:3
    XN(k)=0;
    YN(k)=0;
  end

  Cont=0;
  if Ve(2) ~= Ve(1)
    S= (Nivel(j)-Ve(1))/(Ve(2)-Ve(1));
    if (S >= 0)&(S <= 1);
      Cont= Cont + 1;
      XN(Cont)= Xe(1) + S*(Xe(2)-Xe(1));
      YN(Cont)= Ye(1) + S*(Ye(2)-Ye(1));
    end
  end

   if Ve(3) ~= Ve(2)
    S= (Nivel(j)-Ve(2))/(Ve(3)-Ve(2));
    if (S >= 0)&(S <= 1);
      Cont= Cont + 1;
      XN(Cont)= Xe(2) + S*(Xe(3)-Xe(2));
      YN(Cont)= Ye(2) + S*(Ye(3)-Ye(2));
    end
  end
  
  if Ve(1) ~= Ve(3) 
    S= (Nivel(j)-Ve(3))/(Ve(1)-Ve(3));
    if (S >= 0)&(S <= 1);
      Cont= Cont + 1;
      XN(Cont)= Xe(3) + S*(Xe(1)-Xe(3));
      YN(Cont)= Ye(3) + S*(Ye(1)-Ye(3));
    end
  end

  if Cont == 2;
    XN(3)= XN(1);
    YN(3)= YN(1);
  end

  if Cont > 1;
    plot(XN,YN,'w');
  end
end

