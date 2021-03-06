-- Fur
Fur = class(BrushEx)

function Fur:init()
    BrushEx.init(self,"Fur")
end

function Fur:stroke(x,y)
    
    pushStyle()
    
    stroke(red,green,blue,alpha)
    strokeWidth(thicknessFill)
    
    line(self.prevX,self.prevY,x,y) 
    
    stroke(red,green,blue,alpha * 0.2)
    
    local dx, dy, d
    
    for i = 1, #self.points do
        dx = self.points[i].x - self.points[self.count].x
        dy = self.points[i].y - self.points[self.count].y
        d = dx * dx + dy * dy
        if d < 2000 and math.random() > d/2000 then
            line(x + dx * 0.5,
                y + dy * 0.5,
                x - dx * 0.5,
                y - dy * 0.5)
        end
    end
    popStyle()
end