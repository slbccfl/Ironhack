hash={:wat=>["a","b",{:wut=>[0,[[0,1,2,3,4,5,6,7,8,{:bbq=>"You are here"}]]]}]}
p hash[:wat][2][:wut][1][0][9][:bbq] 
arr=[[0,1,2,3,4,{:secret=>{:unlock=>[0,"unlocked!"]}}]]
p arr[0][5][:secret][:unlock][1]