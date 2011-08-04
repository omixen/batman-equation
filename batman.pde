// Processing code
void setup() {
    float step = 20;
    float swidth = 600;
    float sheight = 600;
    float cX = swidth/2;
    float cY = sheight/2;
    
    size(swidth, sheight);
    background(0);
    stroke(65);
    line(0, cY, swidth, cY);
    line(cX, 0, cX, sheight);
    stroke(255);
    
    float y = 0.0;
    float x = 0.0;
    float a = 3*sqrt(33)/7;
    for (x = -8.0; x < 8.0; x = x+.01) 
    {
        //the flat line the top of the head
        y = 2.25*sqrt(abs((x-.5)*(x+.5))/((.5-x)*(.5+x)));
        ellipse(cX+(x*step), cY-(y*step), 1, 1);
        //the inside of the horns
        y = (3*abs(x)+(.75*sqrt(abs((abs(x)-.75)*(abs(x)-.5))/((.75-abs(x))*(abs(x)-.5)))));
        ellipse(cX+(x*step), cY-(y*step), 1, 1);
        //the outside of the horns
        y = (9*sqrt(abs((abs(x)-1)*(abs(x)-.75))/((1-abs(x))*(abs(x)-.75))))-8*abs(x);
        ellipse(cX+(x*step), cY-(y*step), 1, 1);
        //the shoulder
        y = ((6*sqrt(10)/7)+((1.5-(.5*abs(x)))*sqrt(abs(abs(x)-1)/(abs(x)-1)))-((6*sqrt(10)/14)*sqrt(4-sq(abs(x)-1))));
        ellipse(cX+(x*step), cY-(y*step), 1, 1);
        //the bottom part
        y = abs(x/2)-(((3*sqrt(33)-7)/112)*sq(x))-3+sqrt(1-sq(abs(abs(x)-2)-1));
        ellipse(cX+(x*step), cY-(y*step), 1, 1);
        //the wings
        y=3*sqrt(1-sq(x/7));
        if(abs(x)>3)
        {            
            ellipse(cX+(x*step), cY-(y*step), 1, 1);
            y=-y;
            if(y>-a)
            {
                ellipse(cX+(x*step), cY-(y*step), 1, 1);
            }
        } 
    }
}